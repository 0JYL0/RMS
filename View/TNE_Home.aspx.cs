using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace test.View
{
    public partial class TNE_Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Trainee_id"] == null)
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

        protected void load()
        {
            con.Open();
            str = "select c.c_id, c.c_name, c.descr from member m, course c where c.c_id =m.c_id and m.TRN_Id = '"+Session["Trainee_id"]+"'";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
    }
}