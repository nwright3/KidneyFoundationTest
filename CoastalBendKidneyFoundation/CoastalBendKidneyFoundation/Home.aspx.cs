/*
 * Henry C Reeves IV
 * Home.aspx.cs
 * Due: December 6 , 2017
 * 
 * This is the back-end for Home.aspx and this is the webpage that user's start on.
 * There are a few important things to mention in this file, this is where the
 * image gallery is working at. It works with an AJAX timer and the Image table.
 * Addionally, this is where the user can send a message to the development team.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace CoastalBendKidneyFoundation
{
    public partial class Home : System.Web.UI.Page
    {
        private int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Checking to see if this is the users first time opening Home.aspx
            if(!IsPostBack)
            {
                SetImageUrl();
            }
        }

        /// <summary>
        /// Ajax time function to trigger the event that changes the images
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            // Storing the current viewstate to i, then incrementing i and updating the viewstate
            int i = (int)ViewState["ImageDisplayed"];
            i = i + 1;
            ViewState["ImageDisplayed"] = i;

            // Creating a data row to retrieve the information
            DataRow imageDataRow = ((DataSet) ViewState["ImageData"]).Tables["image"].Select().FirstOrDefault(x => x["Img_Order"].ToString() == i.ToString());

            // If its empty
            if(imageDataRow != null)
            {
                Image1.ImageUrl = "~/images/" + imageDataRow["Img_Name"].ToString();
            }

            // Otherwise, procede to SetImageUrl
            else
            {
                SetImageUrl();
            }
        }

        /// <summary>
        /// Sets the image url to change the pictures on Home.aspx
        /// </summary>
        private void SetImageUrl()
        {
            // Creating a dataset object
            DataSet ds = new DataSet();

            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString); // Getting connection string
            SqlDataAdapter da = new SqlDataAdapter("spGetImageData", con); // Setting up the adapater
            da.SelectCommand.CommandType = CommandType.StoredProcedure; // Declaring that the commandtype is a stored procedure
            da.Fill(ds, "image"); // Giving the table name and filling out the ds object

            // Storing ds and i into viewstate respectively
            ViewState["ImageData"] = ds;
            ViewState["ImageDisplayed"] = 1;

            // Printing the url
            DataRow imageDataRow = ds.Tables["image"].Select().FirstOrDefault(x => x["Img_Order"].ToString() == "1");
            Image1.ImageUrl = "~/images/" + imageDataRow["Img_Name"].ToString();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            // Creating mail message
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("hreeves983@gmail.com"); // Setting up from
            mailMessage.To.Add("hreeves983@gmail.com"); // Setting up to

            // Establishing subject and body
            mailMessage.Subject = txtSubject.Text;
            mailMessage.Body = "<b>Sender name: </b> " + txtName.Text
                + "<br/>" + "<b>Sender Email: </b>" + txtEmail.Text + "<br/>"
                + txtBody.Text;
            mailMessage.IsBodyHtml = true; // Need this because I added html tags

            // Setting up the smtp client
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Credentials = new System.Net.NetworkCredential("hreeves983@gmail.com", "henry3434");

            // Trying to send mail message
            try
            {
                smtpClient.Send(mailMessage);
            }

            // if it doesn't work, tell the user
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Unable to send your message, please try again later.')", true);
            }
        }
    }
}