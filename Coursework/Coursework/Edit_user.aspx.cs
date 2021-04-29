using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Edit_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["u_id"]);
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                var user_query = context.Users.Where(s => s.Id == id).FirstOrDefault();
                username.Text = user_query.Username;
                first_name.Text = user_query.First_name;
                last_name.Text = user_query.Last_name;
                email.Text = user_query.Email;
                user_type.ClearSelection();
                user_type.Items.FindByText(user_query.User_type).Selected = true;
                password.Text = user_query.Password;

            }
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["u_id"]);
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                var user_query = context.Users.FirstOrDefault(s => s.Id == 1);
                user_query.Username = "123weqw";
                user_query.First_name = first_name.Text;
                user_query.Last_name = last_name.Text;
                user_query.Email = email.Text;                    
                user_query.Password = password.Text;
                user_query.User_type = user_type.SelectedValue;
                context.SaveChanges();
            }
        }
    }
}