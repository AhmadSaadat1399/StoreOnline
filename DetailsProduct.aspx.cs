using System;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class DetailsProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Posts.Where(c => c.id == int.Parse(id)).Single();
            var q1 = db.tbl_Posts.Where(c => c.id == int.Parse(id));
            lblname.Text = q.title;
            lblprice.Text = q.Price.ToString();


            ListView1.DataSource = q1;
            ListView1.DataBind();
        }

        protected void btnaddbasket_Click(object sender, EventArgs e)
        {
            if (Session["basket"] == null)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("id");
                dt.Columns.Add("name");
                dt.Columns.Add("price");

                DataRow dr = dt.Rows.Add();
                dr["id"] = Request.QueryString["id"];
                dr["name"] = lblname.Text;
                dr["price"] = lblprice.Text;

                Session["basket"] = dt;
            }
            else
            {
                DataTable dt = (DataTable)Session["basket"];
                DataRow dr = dt.Rows.Add();
                dr["id"] = Request.QueryString["id"];
                dr["name"] = lblname.Text;
                dr["price"] = lblprice.Text;

                Session["basket"] = dt;
            }

            Alert.Show("محصول به سبد خرید اضافه شد");

        }


        protected void btnbasket_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(vbasket);

            Repeater1.DataSource = (DataTable)Session["basket"];
            Repeater1.DataBind();

            lblpricef.Text = CalculatePriceFinally();

        }


        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)//----------------Delete From Basket------------------
        {
            string ID = e.CommandArgument.ToString();
            DataRow rw = null; ;
            DataTable dtBasket = (DataTable)Session["basket"];
            foreach (DataRow row in dtBasket.Rows)
            {
                if (row["id"].ToString() == ID)
                {
                    rw = row;
                    break;
                }
            }
            dtBasket.Rows.Remove(rw);
            Session["Basket"] = dtBasket;
            Repeater1.DataSource = dtBasket;
            Repeater1.DataBind();
        }

        protected void btnpay_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.pibuy(txtname.Text, txtemail.Text, txttell.Text, txtpostcode.Text, txtaddress.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), "0", GetIPAddress());
            db.SubmitChanges();

            var id = (from q in db.tbl_buys select q.id).Max();

            DataTable dt = (DataTable)Session["basket"];
            for (int i = 0; dt.Rows.Count > i; i++)
            {
                db.pibuy2(id.ToString(), dt.Rows[i].ItemArray.GetValue(1).ToString(), int.Parse(dt.Rows[i].ItemArray.GetValue(2).ToString()));
                db.SubmitChanges();
            }


            Session.Add("id", id.ToString());

            PayLine payline = new PayLine();

            double price = Convert.ToDouble(lblpricef.Text);


            string result = payline.Send("http://payline.ir/payment/gateway-send", "e3a7f-26eb3-f31b6-95d13-f55960d8c98b793c1bcbc87f20f4", price, "http%3A%2F%2Fappirani.ir%2Fresult.aspx");


            if (int.Parse(result) > 0)
            {
                Response.Redirect("http://payline.ir/payment/gateway-" + result);
            }

        }


        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }


        private string CalculatePriceFinally()
        {
            try
            {
                int counter = 0;
                DataTable dt = (DataTable)Session["Basket"];
                foreach (DataRow dr in dt.Rows)
                {
                    counter += Convert.ToInt32(dr["Price"]);
                }
                return counter.ToString();
            }
            catch { return "0"; }
        }
    }
}