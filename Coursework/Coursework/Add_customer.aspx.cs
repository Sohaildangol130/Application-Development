using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Add_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Login");
            }
        }

        protected void add_btn_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                Customer customer = new Customer
                {
                    First_name = first_name.Text,
                    Last_name = last_name.Text,
                    Email = email.Text,
                    Phone_no = Int64.Parse(phone_number.Text)
                };
                context.Customers.Add(customer);
                context.SaveChanges();
            }
        }
    }
}