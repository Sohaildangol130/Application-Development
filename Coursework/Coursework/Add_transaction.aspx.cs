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

        }

        protected void create_btn_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                Billing_details billing_Details = new Billing_details
                {
                    Customer_id = int.Parse(customer.SelectedValue),
                    Item_id = int.Parse(item.SelectedValue),
                    Quantity = int.Parse(quantity.Text),
                    Date = DateTime.Parse(bill_date.Text)
                };
                context.Billing_details.Add(billing_Details);
                context.SaveChanges();


            }
        }
    }
}