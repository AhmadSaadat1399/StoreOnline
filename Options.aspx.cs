using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class Options : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            var q = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = "تنظیمات" + " | " + q.Title;



            if (!IsPostBack)
            {
                txttitle.Text = q.Title;
                txtfooter.Text = q.Footer;
                txtabout.Text = q.Aboutus;
                txtcontact.Text = q.Contactus;
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PUpdateOption(1,txttitle.Text, txtfooter.Text, txtabout.Text, txtcontact.Text, null, null, null, null);
            db.SubmitChanges();
        }
    }
}