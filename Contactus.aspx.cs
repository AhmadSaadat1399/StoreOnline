using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class Contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = DateTime.Now.ToString();

            DataClasses1DataContext db = new DataClasses1DataContext();

            var q = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = "تماس با ما" + " | " + q.Title;
            this.lblcontact.Text = q.Contactus;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PIComments(txtname.Text, txtemail.Text, txttitle.Text, txtmessage.Text, null, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), null);
            db.SubmitChanges();
        }
    }
}