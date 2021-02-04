using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_buys.Where(c => c.name == txtname.Text).Single();

            int id = q.id;

            string name=q.name;
            string tell=q.tell;
            string codep=q.codepost;

            Response.Redirect("report1.aspx?id=" + id + "&name=" + name + "&tell=" + tell + "&codep=" + codep);
        }
    }
}