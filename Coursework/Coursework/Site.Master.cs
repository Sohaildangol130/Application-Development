using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/Login");
        }

        protected void edit_profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("/edit_user/?u_id=" + Session["user_id"]);
        }
    }
}