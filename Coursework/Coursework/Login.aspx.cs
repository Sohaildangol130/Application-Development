using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("/");
            }
            
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                string email_text = email.Text;
                string password_text = password.Text;
                var user_query = context.Users.FirstOrDefault(s => s.Email == email_text);
                if (user_query != null && user_query.Password == password_text)
                {
                    Session["username"] = user_query.Username;
                    Session["user_type"] = user_query.User_type;
                    Session["user_id"] = user_query.Id;
                    Response.Redirect("/");
                }
            }            
        }
    }
}