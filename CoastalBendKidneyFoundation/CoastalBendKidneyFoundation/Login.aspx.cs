using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CoastalBendKidneyFoundation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Local variables
            bool pass = false;

            // Creating database connection to user and admin
            SqlConnection userdb = new SqlConnection(userconnection.ConnectionString);
            SqlConnection admindb = new SqlConnection(adminconnection.ConnectionString);

            // Creating commands
            SqlCommand usercmd = new SqlCommand();
            SqlCommand admincmd = new SqlCommand();

            // Defining command type
            usercmd.CommandType = System.Data.CommandType.Text;
            admincmd.CommandType = System.Data.CommandType.Text;

            admincmd.CommandText = "SELECT COUNT (Admin_ID) FROM Admin WHERE Admin_Username = '" + txtUsername.Text + "' AND" +
                " Admin_Password = '" + txtPassword.Text + "'";

            // Using try and catch block cause an exception can occur if something is wrong with database
            try
            {
                admindb.Open();
                Int32 result = (Int32)admincmd.ExecuteScalar();

                // If there is a admin username and password that matches
                if (result == 1)
                {
                    pass = true;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have logged in!')", true);
                }

                else
                {
                    pass = false;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Admin username or password is invalid!')", true);
                }
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                // Print error message
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error: A database error has occured.')", true);
                pass = false;
            }

            finally
            {
                admindb.Close();
            }
        }
    }
}