<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CoastalBendKidneyFoundation.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:sqldatasource ID="userconnection" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:sqldatasource>
    <asp:SqlDataSource ID="adminconnection" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>

    <link rel="stylesheet" href="/style/Login.css" type="text/css" runat="server"/>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="login" />

    <div class="main">
        <div class="brand">
            <h2>Login</h2>
            <div>
                <asp:TextBox ID="txtUsername" runat="server" placeHolder="Username" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username field is required." ControlToValidate="txtUsername" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtPassword" runat="server" placeHolder="Password" TextMode="Password" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password field is required." ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
            </div>

            <br />

            <asp:CheckBox ID="chkRemember" runat="server" Text="Remember me" />

            <br />
            <br />

            <div class="buttonSubmit">
                <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" CssClass="buttonSubmit" ValidationGroup="login" />
            </div>

            <br />

            <div>
                <asp:LinkButton ID="LinkButton1"  CssClass="link" runat="server" OnClick="LinkButton1_Click">Don't have an account? Create one here!</asp:LinkButton>
            </div>

        </div>
    </div>
</asp:Content>
