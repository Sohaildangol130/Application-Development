using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Coursework
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J4P28JF\SQLEXPRESS;Initial Catalog=Coursework;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Users (User_id, Username, First_name, Last_name, Email, Phone_number, Password, User_type) values ('"+user_id.Text+"', '" + username.Text + "','" + first_name.Text + "','" + last_name.Text + "', '"+email.Text+"', '"+phone_no.Text+"', '"+password.Text+"', '"+user_type.Text+"')";
            cmd.ExecuteNonQuery();
            disp_data();
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Users";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}