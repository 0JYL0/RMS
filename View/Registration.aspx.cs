using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.View
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string str;
        string type="";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex.Equals(0) == true)
            {
                invalid.Text = "Please select at least one role";
                pnl1.Visible = true;
            }
            else
            {
                type = DropDownList1.SelectedItem.Value;
                pnl1.Visible = false;
                con.Open();

                str = "insert into request values(@fname,@mname,@lname,@email,@mob,@pwd,@type)";

                cmd = new SqlCommand(str, con);

                cmd.Parameters.AddWithValue("@fname", fname.Text);
                cmd.Parameters.AddWithValue("@mname", mname.Text);
                cmd.Parameters.AddWithValue("@lname", lname.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@mob", mob.Text);
                cmd.Parameters.AddWithValue("@pwd", password.Text);
                cmd.Parameters.AddWithValue("@type", type);

                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    success.Text = "Your request sent successfully !";
                    pnl2.Visible = true;
                    con.Close();
                }
                else
                {
                    pnl2.Visible = false;
                    con.Close();
                }
            }

        }
    }
}