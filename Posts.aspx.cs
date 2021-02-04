using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace irMarket
{
    public partial class Posts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            var q = db.tbl_Options.Where(c => c.id == 1).Single();
            this.Title = "نوشته ها" + " | " + q.Title;
        }

        protected void btnEnteshar_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {

                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("/img/" + filename));

                    DataClasses1DataContext db = new DataClasses1DataContext();
                    db.PInsertPosts(txtTitle.Text,txtMatn.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), null, int.Parse(txtprice.Text), "/img/" + FileUpload1.FileName);

                    db.SubmitChanges();
                    GridView1.DataBind();
                }
                else
                {
                    DataClasses1DataContext db = new DataClasses1DataContext();
                    db.PInsertPosts(txtTitle.Text,txtMatn.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), null, int.Parse(txtprice.Text), null);

                    db.SubmitChanges();
                    GridView1.DataBind();
                }

            }
            else if (flag == 1)
            {
                flag = 0;

                DataClasses1DataContext db = new DataClasses1DataContext();
                
                int Query = int.Parse(GridView1.Rows[rowid].Cells[0].Text);
                var date1 = db.tbl_Posts.Where(c => c.id == Query).Single();
                string MyDate = date1.Date;

                db.PUpdatePosts(Query, txtTitle.Text, txtMatn.Text, MyDate, null, int.Parse(txtprice.Text));

                db.SubmitChanges();
                GridView1.DataBind();
            }


        }

        public static int flag = 0;
        public static int rowid = 0;
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edit")
            {
                flag = 1;
                rowid = int.Parse(e.CommandArgument.ToString());
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);


                DataClasses1DataContext db = new DataClasses1DataContext();
                var Qdel = db.tbl_Posts.Where(c => c.id == del1).Single();

                txtTitle.Text = Qdel.title;
                txtMatn.Text = Qdel.Description;
                txtprice.Text = Qdel.Price.ToString();

            }

            else if (e.CommandName == "cmd_del")
            {
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);


                DataClasses1DataContext db = new DataClasses1DataContext();
                var Qdel = db.tbl_Posts.Where(c => c.id == del1).Single();

                db.tbl_Posts.DeleteOnSubmit(Qdel);
                db.SubmitChanges();
                GridView1.DataBind();

            }
        }
    }
}