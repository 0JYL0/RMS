using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.View
{
    public partial class Class_TNR : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Trainer_id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    load();
                }
            }
        }

        protected void Class_Add(object sender, EventArgs e)
        {
            con.Open();

            str = "insert into Course(c_name,descr,T_id) values(@c_name,@descr,@tid)";

            cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@c_name", cname.Text);
            cmd.Parameters.AddWithValue("@descr", desc.Text);
            cmd.Parameters.AddWithValue("@tid", Session["Trainer_id"]);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("class_TNR.aspx");
                con.Close();
            }
            else
            {
                con.Close();
            }
        }

        protected void Inactive(object sender, EventArgs e)
        {
            string id = ((sender as Button).NamingContainer.FindControl("id") as Label).Text;

            inact(id);
        }

        protected void View(object sender, EventArgs e)
        {
            Session["Cls_Id"]=((sender as Button).NamingContainer.FindControl("id") as Label).Text;
            Response.Redirect("Classroom_TNR.aspx");
        }

        protected void load()
        {
            con.Open();
            str = "select * from Course where T_id = '"+Session["Trainer_id"]+"' and status = 'Active'";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }

        protected void inact(string j)
        {
            con.Open();

            str = "update course set status = 'Inactive' where C_id = '" + j + "'";

            cmd = new SqlCommand(str, con);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("Class_TNR.aspx");
                con.Close();
            }
            else
            {
                con.Close();
            }
        }
    }
}