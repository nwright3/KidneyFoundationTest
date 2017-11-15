using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoastalBendKidneyFoundation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {


            //Get textboxes as strings
            string ename = EvtName.Text;
            string edate = EvtDate.Text;
            string eplace = EvtPlace.Text;
            string edescription = EvtDescription.Text;
            

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();                   //Creates database connection

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = " INSERT INTO [Event] ([Event_Name] ,[Event_Date]  ,[Event_Place]  ,[Event_Description]) VALUES('" + ename + " ',' " + edate + " ',' " + eplace + " ',' " + edescription +  " ') ";
          
            cmd.Connection = db;
            db.Open();


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

            }




        }
    }
}