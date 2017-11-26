<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Volunteer.aspx.cs" Inherits="CoastalBendKidneyFoundation.Volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
}
/* Style the header */
.header {
    background-color: #2bbc2b;
    padding: 50px;
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    text-decoration:none;
}

/* Container for flexboxes */
.row {
    display: -webkit-flex;
    display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    padding: 100px;
    height: 300px; /* Should be removed. Only for demonstration */
    font-size: 25px;
    text-align: left;
    line-height: 200%;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f1f1f1;
}

/* Style the footer */
.footer {
    background-color: #f1f1f1;
    padding: 10px;
    text-align: center;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .row {
      -webkit-flex-direction: column;
      flex-direction: column;
    }
}
</style>
<br />

    <div class="header">

        <h1 id="title" style="font-size:50px;">Walk for Kidneys</h1>
        <h2 id="when"  style="font-size:30px;">October 1, 2018</h2>
        <h3 id="where"  style="font-size:30px;">Nelson Wolf Stadium</h3>

    </div>

    <div class="row">
  <div class="column">The Patient Symposium brings people together for mutual support, education and inspiration. 
      This is your chance to ask questions about kidney health, find out more about chronic kidney disease. Information on diet, insurance, your 
      treatment choices and coping with chronic kidney disease will be available.</div>
</div>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
</asp:Content>
