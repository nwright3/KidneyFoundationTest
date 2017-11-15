<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="CoastalBendKidneyFoundation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 118px;
            font-size: small;
        }
        .auto-style2 {
            width: 565px;
        }
        .auto-style3 {
            width: 62%;
            height: 141px;
        }
        .auto-style4 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
    <table class="auto-style3">
        <tr>
            <td class="auto-style1">Event Name:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Date:&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Place:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Description:</td>
            <td class="auto-style2">
                <br class="auto-style4" />
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4" Height="78px" Width="237px"></asp:TextBox>
                <br />
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Create Event" />
    <br/>
</asp:Content>
