using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Login");
            }
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow gvr = GridView1.Rows[rowindex];
                String user_id = GridView1.Rows[rowindex].Cells[0].Text;
                Response.Redirect("/Edit_user/?u_id=" + user_id);
            }
            if (e.CommandName == "delete")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow gvr = GridView1.Rows[rowindex];
                String user_id = GridView1.Rows[rowindex].Cells[0].Text;
                int id = Int32.Parse(user_id);
                using (CourseworkEntities8 context = new CourseworkEntities8())
                {
                    User user = context.Users.FirstOrDefault(r => r.Id == id);
                    context.Users.Remove(user);
                    context.SaveChanges();
                    Response.Redirect("/Users");
                }
            }
        }
    }
}