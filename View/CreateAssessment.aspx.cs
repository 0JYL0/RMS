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
    public partial class CreateAssessment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string str,ans;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["trainer_id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                title.Text = Session["Asmnt_Name"].ToString();
            }
        }

        protected void liveToastBtn_Click(object sender, EventArgs e)
        {
            if (!Op1.Checked && !Op2.Checked && !Op3.Checked && !Op4.Checked)
            {
                title.Text = "Please select the answer";
            }
            else
            {
                if (Op1.Checked)
                {
                    ans = Opt1.Text;
                }
                else if (Op2.Checked)
                {
                    ans = Opt2.Text;
                }
                else if (Op3.Checked)
                {
                    ans = Opt3.Text;
                }
                else if (Op4.Checked)
                {
                    ans = Opt4.Text;
                }
                else
                {
                    ans = null;
                }
            }

            con.Open();
            //insert command 
            str = "insert into Questions(ques,opt1,opt2,opt3,opt4,ans,point,a_id) values(@ques,@opt1,@opt2,@opt3,@opt4,@ans,@point,@aid)";
            cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@ques", ques.Text);
            cmd.Parameters.AddWithValue("@opt1", Opt1.Text);
            cmd.Parameters.AddWithValue("@opt2", Opt2.Text);
            cmd.Parameters.AddWithValue("@opt3", Opt3.Text);
            cmd.Parameters.AddWithValue("@opt4", Opt4.Text);
            cmd.Parameters.AddWithValue("@ans", ans);
            cmd.Parameters.AddWithValue("@point", point.Text);
            cmd.Parameters.AddWithValue("@aid", Session["Asmnt_Id"]);

            try
            {
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Redirect("CreateAssessment.aspx");
                    con.Close();
                }
                con.Close();
            }
            catch (Exception t)
            {
                invalid.Text = "Exception is :" + t;
                pnl1.Visible = true;
                con.Close();
            }
        }
    }
}