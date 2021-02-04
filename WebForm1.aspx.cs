using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName == "1" && Login1.Password == "2")
            {
                Session.Add("Login1", Login1.UserName);
                Response.Redirect("AdminPanel.aspx");
                return;
            }

            else
            {
                Response.Redirect("WebForm1.aspx");
                return;
            }
        }
    }
}