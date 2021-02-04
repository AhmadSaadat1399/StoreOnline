using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id= Request.QueryString["id"];

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_buy2s.Where(c => c.userid == id);

            Repeater1.DataSource = q;
            Repeater1.DataBind();


        }
    }
}