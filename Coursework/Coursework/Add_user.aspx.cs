using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Add_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void create_btn_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                User user = new User
                {
                    Username = username.Text,
                    First_name = first_name.Text,
                    Last_name = last_name.Text,
                    Email = email.Text,
                    Password = password.Text,
                    User_type = user_type.SelectedValue
                };
                context.Users.Add(user);
                context.SaveChanges();
            }
        }
    }
}