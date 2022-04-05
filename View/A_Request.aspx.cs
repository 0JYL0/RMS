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
    public partial class A_Request : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["rms_conn"].ConnectionString);
        SqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
            }
        }

        protected void Select(object sender, EventArgs e)
        {
            string id = ((sender as Button).NamingContainer.FindControl("id0") as Label).Text;
            string type = ((sender as Button).NamingContainer.FindControl("type") as Label).Text;

            insert(id,type);
            success.Text = id + " Request accepted  !";

        }

        protected void Delete(object sender, EventArgs e)
        {
            string id = ((sender as Button).NamingContainer.FindControl("id0") as Label).Text;

            deleteI(id);
            success.Text = id + " deleted Successfully !";
            pnl2.Visible = true;
        }

        protected void load()
        {
            str = "select * from Request";
            cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }

        protected void insert(string s,string t)
        {
            con.Open();

            str = "insert into "+t+"(fname,mname,lname,email,pwd) select fname,mname,lname,email,pwd from Request where id = '" + s + "'";

            cmd = new SqlCommand(str, con);

            int i = cmd.ExecuteNonQuery();
            deleteI(s);

            if (i > 0)
            {
                pnl2.Visible = true;
                Response.Redirect("A_Request.aspx");
                con.Close();
            }
            else
            {
                pnl2.Visible = false;
                con.Close();
            }
        }

        protected void deleteI(string s)
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            str = "delete from request where Id = '" + s + "'";

            cmd = new SqlCommand(str, con);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("A_Request.aspx");
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