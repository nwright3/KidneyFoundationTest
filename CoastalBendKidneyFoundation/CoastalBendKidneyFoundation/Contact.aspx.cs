using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace CoastalBendKidneyFoundation
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage(txtFrom.Text, "hreeves983@gmail.com", txtSubject.Text, txtMessage.Text);
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

            client.Credentials = new System.Net.NetworkCredential()
            {
                UserName = txtFrom.Text,
                Password = txtPassword.Text
            };

            client.EnableSsl = true;

            try
            {
                client.Send(mail);
            }

            catch(Exception excpetion)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Could not send message. Please check that all the information is correct. Please check security settings on your email account to allow less secure apps.')", true);
            }
        }
    }
}