using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.View.layout
{
    public partial class Trainer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout0(object sender, EventArgs e)
        {
            Session["Tid"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}