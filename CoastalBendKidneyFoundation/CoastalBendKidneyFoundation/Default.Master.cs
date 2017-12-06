/*
 * Henry C Reeves IV
 * Default.Master.cs
 * Due: December 6 , 2017
 * 
 * This is the Default.Master page back-end logic for the website. 
 * This master page controls the navigation bar. In other words,
 * if a user signs in, different options are shown. However,
 * a user cannot see the Management Console that is exclusive
 * to admins only.
*/
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
            // Checking to see if admin Session item exists
            if (Session["LoginAdmin"] != null)
            {
                adminControl.Visible = true;
                signup.Visible = false;
                login.Visible = false;
                logout.Visible = true;
            }

            // Checking to see if user Session item exists
            else if(Session["LoginUser"] != null)
            {
                adminControl.Visible = false;
                signup.Visible = false;
                login.Visible = false;
                logout.Visible = true;
            }

            // Otherwise, return to normal
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