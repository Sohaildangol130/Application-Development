using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coursework
{
    public partial class Add_item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Add_button_Click(object sender, EventArgs e)
        {
            using (CourseworkEntities8 context = new CourseworkEntities8())
            {
                Item item = new Item
                {
                    Item_name = item_name.Text,
                    Description = description.Text,
                    Price = int.Parse(price.Text),
                    Total = int.Parse(stock.Text),
                    Last_stocked_on = DateTime.Parse(purchase_date.Text),
                    Category_id = int.Parse(category.SelectedValue)
                };
                context.Items.Add(item);
                context.SaveChanges();
            }
        }
    }
}