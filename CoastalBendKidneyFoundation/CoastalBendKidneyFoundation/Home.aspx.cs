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
        private int counter;

        protected void Page_Load(object sender, EventArgs e)
        {
            counter = 1;

            if(!IsPostBack)
            {
                SetImageUrl();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int i = (int) ViewState["ImageDisplayed"];
            i = i + 1;
            ViewState["ImageDisplayed"] = i;

            DataRow imageDataRow = ((DataSet) ViewState["ImageData"]).Tables["image"].Select().FirstOrDefault(x => x["Img_Order"].ToString() == i.ToString());

            if(imageDataRow != null)
            {
                Image1.ImageUrl = "~/images/" + imageDataRow["Img_Name"].ToString();
                name.Text = imageDataRow["Img_Name"].ToString();
            }

            else
            {
                SetImageUrl();
            }
        }

        private void SetImageUrl()
        {
            DataSet ds = new DataSet();

            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("spGetImageData", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(ds, "image");


            ViewState["ImageData"] = ds;
            ViewState["ImageDisplayed"] = 1;

            DataRow imageDataRow = ds.Tables["image"].Select().FirstOrDefault(x => x["Img_Order"].ToString() == "1");
            Image1.ImageUrl = "~/=images/" + imageDataRow["Img_Name"].ToString();

        }
    }
}