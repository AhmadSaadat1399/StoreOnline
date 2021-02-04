using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Comments;
            

            var q1 = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = "دیدگاه ها" + " | " + q1.Title;


            ListView1.DataSource = q;
            ListView1.DataBind();
        }
    }
}