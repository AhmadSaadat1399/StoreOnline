using System;
using System.Linq;

namespace irMarket
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Posts;



            var q1 = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = q1.Title;

            ListView1.DataSource = q.OrderByDescending(x => x.id);
            ListView1.DataBind();



        }
    }
}