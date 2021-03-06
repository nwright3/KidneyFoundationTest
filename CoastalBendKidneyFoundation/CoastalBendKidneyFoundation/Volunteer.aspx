﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Volunteer.aspx.cs" Inherits="CoastalBendKidneyFoundation.Volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [Event]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [Comments]"></asp:SqlDataSource>
    <br />

    <link rel="stylesheet" href="/style/Home.css" type="text/css" runat="server" />

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
    .auto-style5 {
        height: 198px;
        width: 603px;
        text-align: center;
        position: relative;
        left: 173px;
        top: -15px;
        margin-left: 805px;
        margin-right: 538px;
    }
    .auto-style6 {
        text-align: center;
        height: 345px;
        width: 1113px;
        float: left;
        margin-left: 190px;
    }
    .auto-style7 {
        height: 343px;
        width: 923px;
        float: right;
        margin-left: 0px;
    }
    .auto-style8 {
        float: left;
        margin-left: 0px;
    }
    .auto-style9 {
        margin-left: 0px;
        margin-right: 302px;
        margin-bottom: 0px;
    }
    .auto-style10 {
        text-align: center;
    }
    .auto-style11 {
        margin-left: 763px;
        margin-right: 277px;
        margin-bottom: 4px;
    }
    .auto-style12 {
        margin-top: 292px;
        margin-bottom: 0px;
    }
</style>
    <br />
    <div class="auto-style6">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="Event_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="336px" Width="1109px" CssClass="auto-style8">
            <EditItemTemplate>
                Event_Id:
                <asp:Label ID="Event_IdLabel1" runat="server" Text='<%# Eval("Event_Id") %>' />
                <br />
                Event_Name:
                <asp:TextBox ID="Event_NameTextBox" runat="server" Text='<%# Bind("Event_Name") %>' />
                <br />
                Event_Date:
                <asp:TextBox ID="Event_DateTextBox" runat="server" Text='<%# Bind("Event_Date") %>' />
                <br />
                Event_Place:
                <asp:TextBox ID="Event_PlaceTextBox" runat="server" Text='<%# Bind("Event_Place") %>' />
                <br />
                Event_Description:
                <asp:TextBox ID="Event_DescriptionTextBox" runat="server" Text='<%# Bind("Event_Description") %>' />
                <br />
                Event_Attendance:
                <asp:TextBox ID="Event_AttendanceTextBox" runat="server" Text='<%# Bind("Event_Attendance") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Event_Name:
                <asp:TextBox ID="Event_NameTextBox" runat="server" Text='<%# Bind("Event_Name") %>' />
                <br />
                Event_Date:
                <asp:TextBox ID="Event_DateTextBox" runat="server" Text='<%# Bind("Event_Date") %>' />
                <br />
                Event_Place:
                <asp:TextBox ID="Event_PlaceTextBox" runat="server" Text='<%# Bind("Event_Place") %>' />
                <br />
                Event_Description:
                <asp:TextBox ID="Event_DescriptionTextBox" runat="server" Text='<%# Bind("Event_Description") %>' />
                <br />
                Event_Attendance:
                <asp:TextBox ID="Event_AttendanceTextBox" runat="server" Text='<%# Bind("Event_Attendance") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <asp:Label ID="Event_NameLabel" runat="server" Text='<%# Bind("Event_Name") %>' />
                <br />
                <br />
                <asp:Label ID="Event_DateLabel" runat="server" Text='<%# Bind("Event_Date") %>' />
                <br />
                <br />
                <asp:Label ID="Event_PlaceLabel" runat="server" Text='<%# Bind("Event_Place") %>' />
                <br />
                <br />
                <asp:Label ID="Event_DescriptionLabel" runat="server" Text='<%# Bind("Event_Description") %>' />
                <br />
                <br />
                <br />
                <br />
                Attendance:
                <asp:Label ID="Event_AttendanceLabel" runat="server" Text='<%# Bind("Event_Attendance") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
        </div>
        <div class="auto-style7">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="329px" NextPrevFormat="FullMonth" SelectedDate='<%# Eval("Event_ID") %>' Width="542px" CssClass="auto-style9">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <br />
        </div>
        <asp:Button ID="bttAttending" runat="server" CssClass="auto-style12" Height="44px" OnClick="bttAttending_Click" Text="I'm Attending!" Width="154px" ValidateRequestMode="Disabled" />
    <br />
    <br />
    <br />
    <div>
        <h3 class="goals">Comments</h3>
    </div>
    <br />
    <br />
    <div class="auto-style10">

        <asp:DataList ID="DataList1" runat="server" CellPadding="4" CssClass="auto-style11" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="118px" HorizontalAlign="Justify" Width="996px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                &nbsp;<asp:Label ID="Comment_NameLabel" runat="server" Text='<%# Eval("Comment_Name") %>' />
                :
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>

    </div>
    <br />

    <br />

    <div class="auto-style5">

        <br />
        <asp:TextBox ID="txtCommentName" runat="server" Height="21px" Width="325px">Your Name</asp:TextBox>
        <br />
        <asp:TextBox ID="txtComment" runat="server" Height="106px" Width="325px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Height="38px" Text="Submit" Width="76px" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />

    </div>
    </asp:Content>
