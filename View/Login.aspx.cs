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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string str, type = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            type = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uname.Text == "Admin" && pass.Text == "123")
            {
                Response.Redirect("MHome.aspx");
            }

            type = DropDownList1.SelectedItem.Value;

            if (DropDownList1.SelectedIndex.Equals(0) == true || type == null || type == "")
            {
                alert.Text = "Please select atleast one choice";
                Panel1.Visible = true;
            }
            else
            {
                type = DropDownList1.SelectedItem.Value;

                SqlDataReader dr;

                con.Open();

                str = "select * from " + type + " where email = '" + uname.Text + "' and pwd = '" + pass.Text + "' ";

                cmd = new SqlCommand(str, con);

                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();

                    if (DropDownList1.SelectedIndex.Equals(1))
                    {
                        Session["Trainer_id"] = dr.GetString(1);
                        Response.Redirect("TNR_Home.aspx");
                    }
                    else
                    {
                        Session["Trainee_id"] = dr.GetString(1);
                        Response.Redirect("TNE_Home.aspx");
                    }


                    con.Close();
                }
                else
                {
                    alert.Text = "Please check username and password!";
                    Panel1.Visible = true;
                    con.Close();
                }
            }
        }
    }
}