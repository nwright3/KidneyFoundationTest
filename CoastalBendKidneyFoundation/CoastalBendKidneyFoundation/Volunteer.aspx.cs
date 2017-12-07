using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace CoastalBendKidneyFoundation
{
    public partial class Volunteer : System.Web.UI.Page
    {
        /*This is so if a user is login to the website, the username will be presented in the Comments section instead of the user being able to use any other username.*/
        string strConnString = ConfigurationManager.ConnectionStrings["CostalbendKidneyFoundationConnectionString3"].ConnectionString;
        SqlCommand com;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null)
                {
                    txtCommentName.Text = Request.Cookies["UserName"].Value;
                    txtCommentName.ReadOnly = true;
                }
                else
                    txtCommentName.Text = "Your Name";
            }
        }

        /* This is to submit a comment onto the event page. '
           This allows anyone on the website to interact with
           the users and provide information for the event.
             */

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "INSERT into Comments values('"+txtCommentName.Text+"','"+txtComment.Text+"')";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            DataList1.DataBind();
        }


        /* This will increment the attendance count by one once clicked by a user. This will blackout the button so that it isnt spammable.
     */

        protected void bttAttending_Click(object sender, EventArgs e)
        {
            bttAttending.Enabled = false;
            bttAttending.Text = "Attending!";

            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "UPDATE Event SET Event_Attendance = Event_Attendance + 1";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
            con.Close();
            FormView1.DataBind();
        }
    }
}