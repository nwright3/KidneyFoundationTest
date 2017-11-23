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
            /*MailMessage mailMessage = new MailMessage(txtFrom.Text, "hreeves682@gmail.com");
            mailMessage.Subject = txtSubject.Text;
            mailMessage.Body = txtMessage.Text;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "hreeves682@gmail.com",
                Password = "xInSaN3x"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);*/

            /*MailMessage mail = new MailMessage("hreeves682@gmail.com", "hreeves682@gmail.com", txtSubject.Text, txtMessage.Text);
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

            client.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "hreeves682@gmail.com",
                Password = "xInSaN3x"
            };

            client.EnableSsl = true;
            client.Send(mail);*/
        }
    }
}