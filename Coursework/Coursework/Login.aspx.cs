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

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                string email_text = email.Text;
                string password_text = password.Text;
                var query = context.Users.SqlQuery("select first_name from Users where email = '" + email_text + "'").FirstOrDefault();
                email.Text = Convert.ToString(query);
                if (FormsAuthentication.Authenticate(email.Text, password.Text))
                {
                    FormsAuthentication.RedirectFromLoginPage(email.Text, false);
                }
            }            
        }
    }
}