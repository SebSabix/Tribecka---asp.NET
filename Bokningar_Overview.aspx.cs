using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tribecka
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLgOut_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}