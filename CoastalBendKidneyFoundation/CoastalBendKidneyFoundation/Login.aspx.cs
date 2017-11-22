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
            // Checking to see if there are cookies
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    txtUsername.Text = Request.Cookies["UserName"].Value;
                    chkRemember.Checked = true;
                }
            }
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

            usercmd.CommandText = "SELECT COUNT (User_ID) FROM [User] WHERE User_Username = '" + txtUsername.Text +
                "' AND User_Password = '" + txtPassword.Text + "';";

            admincmd.Connection = admindb;
            usercmd.Connection = userdb;

            // Using try and catch block cause an exception can occur if something is wrong with database
            try
            {
                admindb.Open();
                userdb.Open();
                Int32 resultAdmin = (Int32)admincmd.ExecuteScalar();
                Int32 resultUser = (Int32)usercmd.ExecuteScalar();

                // If there is a admin username and password that matches
                if(resultUser == 1)
                {
                    pass = true;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Welcome User!')", true);
                }

                else if(resultAdmin == 1)
                {
                    pass = true;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Welcome Admin!')", true);
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
                userdb.Close();
            }

            if (pass)
            {
                // Remember what the user type in
                if (chkRemember.Checked)
                {
                    Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                }
                else
                {
                    Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                }

                // Trimming to make sure no whitespaces are kept
                Response.Cookies["UserName"].Value = txtUsername.Text.Trim();

                Session["Logout"] = "false";
                Session["Username"] = txtUsername.Text;
                Session["Login"] = "true";
                Response.Redirect("Home.aspx");
            }
        }
    }
}