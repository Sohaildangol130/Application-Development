using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Add_transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/Login");
            }
        }

        protected void create_btn_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                int item_id = int.Parse(item.SelectedValue);
                int total = int.Parse(quantity.Text);
                Billing_details billing_Details = new Billing_details
                {
                    Customer_id = int.Parse(customer.SelectedValue),
                    Item_id = item_id,
                    Quantity = total,
                    Date = DateTime.Parse(bill_date.Text)
                }; 
                var item_query = context.Items.FirstOrDefault(s => s.Id == item_id);
                item_query.Total = item_query.Total - total;
                context.Billing_details.Add(billing_Details);
                context.SaveChanges();
            }
        }
    }
}