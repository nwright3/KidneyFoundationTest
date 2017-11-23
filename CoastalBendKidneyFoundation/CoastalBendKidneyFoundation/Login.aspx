<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CoastalBendKidneyFoundation.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:sqldatasource ID="userconnection" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:sqldatasource>
    <asp:SqlDataSource ID="adminconnection" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>

    <link rel="stylesheet" href="~/style/Login.css" type="text/css" />

    <div class="main">
        <div class="brand">
            <h2>Login</h2>
            <div class="textboxes">
                <asp:TextBox ID="txtUsername" runat="server" placeHolder="Username" ></asp:TextBox>
                <br />
                <asp:TextBox ID="txtPassword" runat="server" placeHolder="Password" TextMode="Password"></asp:TextBox>
               
            </div>

            <br />

            <asp:CheckBox ID="chkRemember" runat="server" Text="Remember me" />

            <br />
            <br />

            <div class="buttonSubmit">
                <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
