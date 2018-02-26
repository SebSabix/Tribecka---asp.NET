using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Tribecka
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //Cookies
        {
            HttpCookie cookie = Request.Cookies["Preferences"];
            if (cookie == null)
            {
                lblsparad.Text = "Okänd Användare<br/>";
            }
            else 
            {
                lblsparad.Text = "Sparat Användaren<br/>";
                lblsparad.Text += "välkommen ," + cookie["Name"];
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e) //Login session
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string cmdStr = "select count(*) from LoginTbl where AnvNamn='" + txtAnv.Text + "'"; 
            SqlCommand CheckUser = new SqlCommand(cmdStr, con);
            int temp = Convert.ToInt32(CheckUser.ExecuteScalar().ToString());

            if (temp == 1)
            {
                string cmdStr2 = "select Lösenord from LoginTbl where AnvNamn='" + txtAnv.Text + "'";
                SqlCommand pass = new SqlCommand(cmdStr2, con);
                string password = pass.ExecuteScalar().ToString();
                con.Close();

                if (password == txtLösen.Text)
                {
                    Session["New"] = txtAnv.Text;
                    Response.Redirect("SecureSession.aspx");


                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Felaktigt lösenord!";
                
                
                }
            }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Felaktigt användarnamn!";

                
                
                }
            {         
            }
        }

        protected void cbox_CheckedChanged(object sender, EventArgs e) //Cookies
        {
            HttpCookie cookie = Request.Cookies["Preferences"];
            if (cookie == null)
            {
                cookie = new HttpCookie("Preferences");
            }
            cookie["Name"] = txtAnv.Text;
            cookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookie);

            lblsparad.Text = "Cookie Sparad<br/>";
            lblsparad.Text += "Ny Användare" + cookie["Name"];
        }
    }
}