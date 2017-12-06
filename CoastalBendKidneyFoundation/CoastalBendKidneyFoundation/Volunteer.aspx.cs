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
                }
                else
                    txtCommentName.Text = "Your Name";
            }
        }

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