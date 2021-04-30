using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Login");
            }
            welcome_note.InnerText = "Welcome, " + Session["username"].ToString();
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                var items_query = context.Items.Where(s => s.Total < 10);
                var items_query_2 = context.Items.Where(s => s.Total == 0);

                almost_out_of_stock.DataSource = items_query.ToList();
                out_of_stock.DataSource = items_query_2.ToList();

                almost_out_of_stock.DataBind();
                out_of_stock.DataBind();
            }
        }
    }
}