using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoastalBendKidneyFoundation
{
    public partial class AdminContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            int i = 0; // Counts the number of emails sent

            // Send all
            if(sendAll.Checked)
            {
                foreach (GridViewRow item in GridView1.Rows)
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
                    smtpClient.Send(mailMessage);
                    i++;
                }
            }

            // Send selected
            else
            {
                // Getting user emails
                foreach (GridViewRow item in GridView1.Rows)
                {
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
                        smtpClient.Send(mailMessage);
                        i++;
                    }
                }

                // If no emails sent
                if(i == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, 
                        this.GetType(), "alertMessage", "alert('You must select all or at least one checkbox in the gridview!')", true);
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this,
                        this.GetType(), "alertMessage", "alert('Send successful" +
                        "!')", true);
                }
            }
        }
    }
}