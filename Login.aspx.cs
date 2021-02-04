using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            var q = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = "ورود" + " | " + q.Title;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Users.Where(c => c.UserName == txtUser.Text && c.Password == txtPass.Text);


            if (q.Count() > 0)
            {
                Session.Add("Login1", txtUser.Text);
                Response.Redirect("AdminPanel.aspx");
                return;



            }
            else
            {
                Response.Redirect("Login.aspx");
                return;
            }

        }
    }
}