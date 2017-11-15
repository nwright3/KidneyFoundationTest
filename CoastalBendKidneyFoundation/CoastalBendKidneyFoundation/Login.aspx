<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CoastalBendKidneyFoundation.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:sqldatasource>
</asp:Content>
