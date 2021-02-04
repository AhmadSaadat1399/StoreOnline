using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            PayLine GetPayline = new PayLine();
            string trans_id = Request.Form["trans_id"];
            string id_get = Request.Form["id_get"];
            //GetPayline.Get(url,"Your-API", trans_id, id_get)
            string result = GetPayline.Get("http://payline.ir/payment/gateway-result-second", "e3a7f-26eb3-f31b6-95d13-f55960d8c98b793c1bcbc87f20f4", trans_id, id_get);

            if (result == "1")
            {
                var id = Session["id"];
                DataClasses1DataContext db = new DataClasses1DataContext();
                var q = db.tbl_buys.Where(c => (c.id == int.Parse(id.ToString())) && (c.ip == GetIPAddress())).Single();

                db.pubuy(q.id, trans_id);

                db.SubmitChanges();


                lblresult.Text = "پرداخت با موفقیت انجام شد";
                lbltransid.Text = trans_id;

            }

            else
            {
                lblresult.Text = "پرداخت نا موفق";
                lbltransid.Text = "پرداخت نا موفق";
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
    }
}