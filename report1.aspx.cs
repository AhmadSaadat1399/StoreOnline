using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class report1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id=int.Parse( Request.QueryString["id"]);
            string name = Request.QueryString["name"];
            string tell = Request.QueryString["tell"];
            string codep = Request.QueryString["codep"];


            lblname.Text = name;
            lbltell.Text = tell;
            lblcode.Text = codep;

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_buy2s.Where(c => c.userid == id.ToString());

            ListView1.DataSource = q;
            ListView1.DataBind();


        }
    }
}