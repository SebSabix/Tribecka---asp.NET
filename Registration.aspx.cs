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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string cmdStr = "select count(*) from LoginTbl where AnvNamn='" + txtAnvR.Text + "'";
                SqlCommand userExist = new SqlCommand(cmdStr, con);

                int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    Response.Write("Användarnamn existerar redan!<br /> Vänligen välj ett annat användarnamn.");
                }            
            }           
        }

        protected void btnSpara_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string insCmd = "Insert into LoginTbl (AnvNamn, Lösenord) values (@AnvNamn, @Lösenord)";
            SqlCommand insertUser = new SqlCommand(insCmd, con);
            insertUser.Parameters.AddWithValue("@AnvNamn", txtAnvR.Text);
            insertUser.Parameters.AddWithValue("@Lösenord", txtLösR.Text);

            try
            {
                insertUser.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");
            }
            catch (Exception er)
            {
                Response.Write("<b>Något fel inträffade! Försök igen!</b>");


            }
            finally
            {
                //Något annat man kan skriva.
            
            
            }
        }
    }
}