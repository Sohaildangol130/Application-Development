using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Customers : System.Web.UI.Page
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
            if (e.CommandName == "view")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow gvr = GridView1.Rows[rowindex];
                String cust_id = GridView1.Rows[rowindex].Cells[0].Text;
                Response.Redirect("/Customer_detail/?c_id=" + cust_id);
            }
        }
    }
}