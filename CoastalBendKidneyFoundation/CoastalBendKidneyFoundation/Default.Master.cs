using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoastalBendKidneyFoundation
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginAdmin"] != null)
            {
                adminControl.Visible = true;
                signup.Visible = false;
                login.Visible = false;
                logout.Visible = true;
            }

            else if(Session["LoginUser"] != null)
            {
                adminControl.Visible = false;
                signup.Visible = false;
                login.Visible = false;
                logout.Visible = true;
            }

            else
            {
                login.Visible = true;
                signup.Visible = true;
                logout.Visible = false;
                adminControl.Visible = false;
                
            }
        }
    }
}