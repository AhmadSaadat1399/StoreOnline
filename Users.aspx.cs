using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            var q = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = "کاربران" + " | " + q.Title;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PInsertUsers(txtusername.Text, txtpassword.Text, txtemail.Text, null, txtrole.SelectedIndex);
            db.SubmitChanges();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             if (e.CommandName == "cmd_del")
            {
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);


                DataClasses1DataContext db = new DataClasses1DataContext();
                var Qdel = db.tbl_Users.Where(c => c.id == del1).Single();

                db.tbl_Users.DeleteOnSubmit(Qdel);
                db.SubmitChanges();
                GridView1.DataBind();

            }
        }
    }
}