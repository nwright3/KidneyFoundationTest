using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace CoastalBendKidneyFoundation
{
    public partial class AdminManageSlideshow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string saveLocation = Server.MapPath("~/Images/") + fileName;
            //FileUpload1.SaveAs(fileName);

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
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
    }
}