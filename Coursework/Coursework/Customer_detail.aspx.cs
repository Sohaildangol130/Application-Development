using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Customer_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Login");
            }
            int id = int.Parse(Request.QueryString["c_id"]);
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                var bill_query = context.Billing_details.Where(s => s.Customer_id == id);
                var customer_query = context.Customers.Where(a => a.Id == id).FirstOrDefault();

                cust_name.InnerText = customer_query.First_name + ' ' + customer_query.Last_name;

                GridView1.DataSource = bill_query.ToList<Billing_details>();
                GridView1.DataBind();
            }
        }
    }
}