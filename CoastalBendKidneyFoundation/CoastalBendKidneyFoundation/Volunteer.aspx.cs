﻿using System;
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
        //string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlCommand com;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from Events";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();

            reader.Read();
            lblEventName.Text = reader["Event_Name"].ToString();

            reader.Read();
            lblEventDate.Text = reader["Event_Date"].ToString();

            reader.Read();
            lblEventPlace.Text = reader["Event_Place"].ToString();

            reader.Read();
            lblEventDesc.Text = reader["Event_Description"].ToString();

            reader.Read();
            lblEventAtt.Text = reader["Event_Attendance"].ToString();

            con.Close(); */
        }
    }
}