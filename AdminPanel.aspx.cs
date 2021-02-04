using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class AdminPanel1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                DataClasses1DataContext db = new DataClasses1DataContext();

                var q = db.tbl_Options.Where(c => c.id == 1).Single();
                this.Title = "مدیریت" + " | " + q.Title;
            
        }
    }
}