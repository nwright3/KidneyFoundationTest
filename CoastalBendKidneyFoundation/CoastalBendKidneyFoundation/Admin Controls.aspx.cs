using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoastalBendKidneyFoundation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { /*                     No need to use following statements since all components
            visibility set hidden by default
            FileUpload1.Visible = false;
            btnUpload.Visible = false;
            ValidationSummary1.Visible = false;
            GridView5.Visible = false;
            txtSubject.Visible = false;
            txtBody.Visible = false;
            btnSend.Visible = false;
            sendAll.Visible = false;
            RequiredFieldValidator2.Visible = false;
            RequiredFieldValidator3.Visible = false;
            EventUpdateLabel.Visible = false;
            EventTable.Visible = false;

            //CollapseUserControl.Visible = false;
            //CollapseAdminControl.Visible = false;
            //CollapseEmail.Visible = false;
            //CollapseSlideShow.Visible = false;
            //CollapseEventControl.Visible = false;

            */
        }               
        //============================================================ Each Control has visibility setttings 
                                                                       //as well as collapse button
                                                                       // views and collapse button are hidden as default
                                                                       //once control button clicked it sets visibility of components to true
        protected void User_Controls(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            CollapseUserControl.Visible = true;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           
        }

        protected void Admin_Controls(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            CollapseAdminControl.Visible = true;
        }
                                                                            
        protected void btnUpload_Click(object sender, EventArgs e)      // Upload slide show photos to database
                                                                        //fetch and select imge and insert to db
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string saveLocation = Server.MapPath("~/Images/") + fileName;
            //FileUpload1.SaveAs(fileName);

            System.Data.SqlClient.SqlConnection db = new SqlConnection(SqlDataSource3.ConnectionString);
            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = System.Data.CommandType.Text;
            //insert image 
            cmd.CommandText = "INSERT INTO Images (Img_Name, Img_Order) VALUES ('" + FileUpload1.FileName + "', 4)";
            cmd.Connection = db;
                            //try insert via command
                            //if it does not work update label
            try
            {
                db.Open();
                cmd.ExecuteNonQuery();
                FileUpload1.SaveAs(Server.MapPath("~/Images/" + fileName));
                Label2.Text = "Image uploaded successfully!";
                Label2.Visible = true;
            }

            catch
            {
                Label2.Text = "An error occurred while uploading the image!";
                Label2.Visible = true;
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error: Database error occured. File could not be added.')", true);
            }

            finally
            {
                db.Close();
            }
        }

        protected void Slide_Show(object sender, EventArgs e)   //=======visibility settings
        {
            GridView3.Visible = true;
            CollapseSlideShow.Visible = true;
            FileUpload1.Visible = true;
            btnUpload.Visible = true;
        }

        protected void CollapseUserControl_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            CollapseUserControl.Visible = false;

        }

        protected void CollapseAdminControl_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            CollapseAdminControl.Visible = false;
        }

        protected void CollapseSlideShow_Click(object sender, EventArgs e)
        {
            GridView3.Visible = false;
            CollapseSlideShow.Visible=false;
            FileUpload1.Visible = false;
            btnUpload.Visible = false;
        }

        protected void Event_Controls(object sender, EventArgs e)
        {
            GridView4.Visible = true;
            EventTable.Visible = true;
            CollapseEventControl.Visible = true;
        }

        protected void CollapseEventControl_Click(object sender, EventArgs e)
        {
            GridView4.Visible = false;
            EventTable.Visible = false;
            EventUpdateLabel.Visible = false;
            CollapseEventControl.Visible = false;
        }                                                                       //End of visibility settings

        protected void Create_Event(object sender, EventArgs e)     //Create Event 
                                                                    //Creates event by fetching info from text boxes
                                                                    //Inserts to the database
        {
            //Get textboxes as strings
            string ename = EvtName.Text;
            string edate = EvtDate.Text;
            string eplace = EvtPlace.Text;
            string edescription = EvtDescription.Text;


            SqlConnection db = new SqlConnection(EventConnection.ConnectionString);
            SqlCommand cmd = new SqlCommand();                   //Creates database connection

            cmd.CommandType = System.Data.CommandType.Text;
                                                                    //Insert command
            cmd.CommandText = " INSERT INTO [Event] ([Event_Name] ,[Event_Date]  ,[Event_Place]  ,[Event_Description]) VALUES('" + ename + " ',' " + edate + " ',' " + eplace + " ',' " + edescription + " ') ";
            cmd.Connection = db;
            db.Open();

                                        //Try to insert if it succesfull update the label
            try
            {       //Login created
                cmd.ExecuteNonQuery();
                EventUpdateLabel.Text = "Event created successfully!";
                EventUpdateLabel.Visible = true;


            }
            catch
            {           //error message if it doesnt work
                EventUpdateLabel.Text = "An error occured while creating the event ";
                EventUpdateLabel.Visible = true;


            }
            finally
            {
                db.Close();
               
                EventUpdateLabel.Visible = true;
                EventTable.Visible = true;


            }

        }

        protected void EMail_Btn(object sender, EventArgs e)        //Visibility settings for email
        {
       
            ValidationSummary1.Visible = true;
            GridView5.Visible = true;
            txtSubject.Visible = true;
            txtBody.Visible = true;
            btnSend.Visible = true;
            sendAll.Visible = true;
            RequiredFieldValidator2.Visible = true;
            RequiredFieldValidator3.Visible = true;
            CollapseEmail.Visible = true;
        }

        protected void CollapseEmail_Click(object sender, EventArgs e)
        {
            ValidationSummary1.Visible = false;
            GridView5.Visible = false;
            txtSubject.Visible = false;
            txtBody.Visible = false;
            btnSend.Visible = false;
            sendAll.Visible = false;
            RequiredFieldValidator2.Visible = false;
            RequiredFieldValidator3.Visible = false;
            CollapseEmail.Visible = false;
        }
                                                        //End of visibility settings

        protected void btnSend_Click(object sender, EventArgs e)        //Send email function
        {
            int i = 0; // Counts the number of emails sent
            
            // Send all
            if (sendAll.Checked)            //send all users 
            {
                foreach (GridViewRow item in GridView5.Rows)
                {
                    string email = item.Cells[2].Text.Trim();
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("hreeves983@gmail.com");     //use following email
                    mailMessage.To.Add(email);
                    mailMessage.Subject = txtSubject.Text;
                    mailMessage.Body = txtBody.Text;

                    // Setting up smtp environment and credentials
                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("hreeves983@gmail.com", "henry3434");
                  
                    try
                    {
                        smtpClient.Send(mailMessage);
                        Label1.Text = "E-mail(s) sent successfully!";           
                        Label1.Visible = true;
                    }
                    catch
                    {
                        //Label1.Text = "An error occurred while sending E-mail(s)!";
                        //Label1.Visible = true;

                    }
                    finally
                    {
                        i++;
                    }

                }
            }

            // Send selected
            else
            {               //select by hand
                // Getting user emails
                foreach (GridViewRow item in GridView5.Rows)
                {
                    //(item.FindControl("chkSelect") as CheckBox).Checked
                    if ((item.FindControl("chkSelect") as CheckBox).Checked)
                    {
                        string email = item.Cells[2].Text.Trim();
                        MailMessage mailMessage = new MailMessage();
                        mailMessage.From = new MailAddress("hreeves983@gmail.com");
                        mailMessage.To.Add(email);
                        mailMessage.Subject = txtSubject.Text;
                        mailMessage.Body = txtBody.Text;

                        // Setting up smtp environment and credentials
                        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                        smtpClient.EnableSsl = true;
                        smtpClient.Credentials = new System.Net.NetworkCredential("hreeves983@gmail.com", "henry3434");
                        try
                        {
                            smtpClient.Send(mailMessage);
                            Label1.Text = "E-mail(s) sent successfully!";
                            Label1.Visible = true;
                        }
                        catch
                        {
                            Label1.Text = "An error occurred while sending E-mail(s)!";
                            Label1.Visible = true;

                        }
                        finally
                        {
                            i++;
                        }
                        }
                }

                // If no emails sent

                if (i == 0)

                {
                    Label1.Text = "You must select all or at least one checkbox in the gridview!";
                    Label1.Visible = true;
                   // ScriptManager.RegisterClientScriptBlock(this,
                   //   this.GetType(), "alertMessage", "alert('You must select all or at least one checkbox in the gridview!')", true);
                }

                else
                {
                   // ScriptManager.RegisterClientScriptBlock(this,
                     //   this.GetType(), "alertMessage", "alert('Send successful" +
                       // "!')", true);
                }
            }
        }
    }
}