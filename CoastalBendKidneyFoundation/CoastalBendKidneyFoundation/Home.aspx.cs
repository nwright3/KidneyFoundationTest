using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CoastalBendKidneyFoundation
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Checking to see if this is the users first time opening Home.aspx
            if(!IsPostBack)
            {
                SetImageUrl();
            }
        }

        /// <summary>
        /// Ajax time function to trigger the event that changes the images
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            // Storing the current viewstate to i, then incrementing i and updating the viewstate
            int i = (int) ViewState["ImageDisplayed"];
            i = i + 1;
            ViewState["ImageDisplayed"] = i;

            // Creating a data row to retrieve the information
            DataRow imageDataRow = ((DataSet) ViewState["ImageData"]).Tables["image"].Select().FirstOrDefault(x => x["Img_Order"].ToString() == i.ToString());

            // If its empty
            if(imageDataRow != null)
            {
                Image1.ImageUrl = "~/images/" + imageDataRow["Img_Name"].ToString();
                //name.Text = imageDataRow["Img_Name"].ToString();
                //name.Text = "Null";
            }

            // Otherwise, procede to SetImageUrl
            else
            {
                SetImageUrl();
            }
        }

        /// <summary>
        /// Sets the image url to change the pictures on Home.aspx
        /// </summary>
        private void SetImageUrl()
        {
            // Creating a dataset object
            DataSet ds = new DataSet();

            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString); // Getting connection string
            SqlDataAdapter da = new SqlDataAdapter("spGetImageData", con); // Setting up the adapater
            da.SelectCommand.CommandType = CommandType.StoredProcedure; // Declaring that the commandtype is a stored procedure
            da.Fill(ds, "image"); // Giving the table name and filling out the ds object

            // Storing ds and i into viewstate respectively
            ViewState["ImageData"] = ds;
            ViewState["ImageDisplayed"] = 1;

            // Printing the url
            DataRow imageDataRow = ds.Tables["image"].Select().FirstOrDefault(x => x["Img_Order"].ToString() == "1");
            Image1.ImageUrl = "~/=images/" + imageDataRow["Img_Name"].ToString();
            //name.Text = "Not Null";

        }
    }
}