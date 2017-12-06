/*
 * Henry C Reeves IV
 * Home.aspx.cs
 * Due: December 6 , 2017
 * 
 * This is Signup.aspx.cs, this is where the user an sign up for our page. It
 * is impossible for a user to signup as an Admin unless the administator goes
 * to the database and adds himeself/herself. There is a password format requirement.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoastalBendKidneyFoundation
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool pass = false;
            bool passwordStatus = checkPassword();

            // If username doesn't exist already and password is in correct format
            if (check() == false && passwordStatus)
            {
                pass = true;
            }

            // Otherwise, do nothing and inform user
            else if (passwordStatus == false)
            {
                pass = false;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password is not in the correct format. Must begin with a letter, " +
                    "include a uppercase letter, lowercase letter, " +
                    "and a digit. Passwords should at least be 8 characters long.')", true);
            }

            // Checking to see if everything is correct
            if (pass)
            {
                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT INTO [User] (User_Username, User_Password, User_Email, User_FName, User_LName, User_Country) VALUES ('" + txtUsername.Text + "', '" + txtPassword.Text + "', '" + txtEmail.Text + "', '" + txtFirstname.Text + "', '" + txtLastname.Text + "', '" + txtCountry.Text + "')";
                cmd.Connection = db;

                // Trying to execute sql statement to insert a user to the User table
                try
                {
                    db.Open(); // Opening connection
                    cmd.ExecuteNonQuery(); // executing command
                    pass = true; // success
                }

                catch (System.Data.SqlClient.SqlException ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error: Database error occured.')", true);
                    pass = false; // failed
                }

                // Closing the database connection
                finally
                {
                    db.Close();
                }

                // If inserition was successful
                if (pass)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration successful! Try logging in.')", true); // This will not show up for some reason, I do not know why....
                    Response.Redirect("Login.aspx");
                }
            }
        }
        // This function checks to see if the password is in the correct format
        public bool checkPassword()
        {
            bool correctForm = false;
            string password = txtPassword.Text;

            //Passwords should begin with a letter, should include an uppercase letter, a lowercase letter and a digit.
            if (Char.IsLetter(password[0]))
            {
                if (password.Any(Char.IsUpper))
                {
                    if (password.Any(Char.IsLower))
                    {
                        if (password.Any(Char.IsDigit))
                        {
                            if (password.Length >= 8)
                            {
                                correctForm = true;
                            }

                            else
                            {
                                correctForm = false;
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Passwords should begin with a letter, should include an uppercase letter , a lowercase letter and a digit.')", true);
                            }
                        }

                        else
                        {
                            correctForm = false;
                        }
                    }

                    else
                    {
                        correctForm = false;
                    }
                }

                else
                {
                    correctForm = false;
                }
            }

            else
            {
                correctForm = false;
            }

            return correctForm;
        }

        // Checking to see if username already exists
        public bool check()
        {
            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            bool pass = false;
            string username = txtUsername.Text;

            // Checking to see if username already exists
            try
            {
                SqlCommand check = new SqlCommand();
                check.CommandText = "select * from [User]";
                check.Connection = db;
                db.Open();
                SqlDataReader dr = check.ExecuteReader();

                // Checking to see if username exists
                while (dr.Read())
                {
                    if (dr[1].ToString() == username)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('This username already Exists.')", true);
                        pass = true;
                        break;
                    }
                }
            }

            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error trying to execute command into database, this is in check.')", true);
                pass = false;
            }

            finally
            {
                db.Close();
            }

            return pass;
        }

        // Takes the user to Login.aspx if they already have an account
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}