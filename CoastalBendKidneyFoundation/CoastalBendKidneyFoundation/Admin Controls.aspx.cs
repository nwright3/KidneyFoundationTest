using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoastalBendKidneyFoundation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FileUpload1.Visible = false;
            btnUpload.Visible = false;
            EmailUpdate.Visible = false;
            EventUpdateLabel.Visible = false;
            EventTable.Visible = false;

        }
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

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string saveLocation = Server.MapPath("~/Images/") + fileName;
            //FileUpload1.SaveAs(fileName);

            System.Data.SqlClient.SqlConnection db = new SqlConnection(SqlDataSource3.ConnectionString);
            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = "INSERT INTO Images (Img_Name, Img_Order) VALUES ('" + FileUpload1.FileName + "', 4)";
            cmd.Connection = db;

            try
            {
                db.Open();
                cmd.ExecuteNonQuery();
                FileUpload1.SaveAs(Server.MapPath("~/Images/" + fileName));
            }

            catch
            {
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error: Database error occured. File could not be added.')", true);
            }

            finally
            {
                db.Close();
            }
        }

        protected void Slide_Show(object sender, EventArgs e)
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
            CollapseEventControl.Visible = false;
        }

        protected void Create_Event(object sender, EventArgs e)
        {
            //Get textboxes as strings
            string ename = EvtName.Text;
            string edate = EvtDate.Text;
            string eplace = EvtPlace.Text;
            string edescription = EvtDescription.Text;


            SqlConnection db = new SqlConnection(EventConnection.ConnectionString);
            SqlCommand cmd = new SqlCommand();                   //Creates database connection

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = " INSERT INTO [Event] ([Event_Name] ,[Event_Date]  ,[Event_Place]  ,[Event_Description]) VALUES('" + ename + " ',' " + edate + " ',' " + eplace + " ',' " + edescription + " ') ";
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
                EventUpdateLabel.Visible = true;
                EventTable.Visible = true;


            }

        }

        protected void EMail_Btn(object sender, EventArgs e)
        {
            EmailUpdate.Visible = true;
            CollapseEmail.Visible = true;
        }

        protected void CollapseEmail_Click(object sender, EventArgs e)
        {
            EmailUpdate.Visible = false;
            CollapseEmail.Visible = false;
        }
    }
}