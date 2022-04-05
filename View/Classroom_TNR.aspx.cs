using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace test.View
{
    public partial class Classroom_TNR : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["Trainer_id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    load();
                    load0();
                    load1();
                }
            }

        }
        protected void add_t(object sender, EventArgs e)
        {
            con.Open();
            string id = ((sender as Button).NamingContainer.FindControl("id0") as Label).Text;
            //insert command 
            str = "insert into member values('"+id+"','"+Session["Cls_Id"]+"')";
            cmd = new SqlCommand(str, con);

            try
            {
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Redirect("Classroom_TNR.aspx");
                    con.Close();
                }
                con.Close();
            }
            catch (Exception)
            {
                invalid.Text = "Record Already Exist !";
                Panel1.Visible = true;
                con.Close();
            }

        }

        protected void asmt(object sender, EventArgs e)
        {
            con.Open();
            //insert command 
            str = "insert into Assessment values(@name,@desc,@class)";
            cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@name", Aname.Text);
            cmd.Parameters.AddWithValue("@desc", desc.Text);
            cmd.Parameters.AddWithValue("@class", Session["Cls_Id"]);

            try
            {
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Redirect("Classroom_TNR.aspx");
                    con.Close();
                }
                con.Close();
            }
            catch(Exception) 
            {
                con.Close();    
            }
        }

        protected void ques(object sender, EventArgs e)
        {

            Session["Asmnt_Id"] = ((sender as Button).NamingContainer.FindControl("Aid") as Label).Text;
            Session["Asmnt_Name"] = ((sender as Button).NamingContainer.FindControl("name") as Label).Text;

            Response.Redirect("CreateAssessment.aspx");

        }

        protected void load()
        {
            str = "select * from trainee";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }

        protected void load1()
        {
            str = "select * from Assessment where c_id = '"+Session["Cls_Id"]+"'";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            Repeater3.DataSource = dt;
            Repeater3.DataBind();
            con.Close();
        }

        protected void load0()
        {
            str = "select t.TNE_Id, t.Email from trainee t, member m where t.TNE_Id = m.TRN_Id and m.C_Id = '"+Session["Cls_Id"]+"'";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            con.Close();
        }

    }
}