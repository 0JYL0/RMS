using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.View
{
    public partial class TNR_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Trainer_id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}