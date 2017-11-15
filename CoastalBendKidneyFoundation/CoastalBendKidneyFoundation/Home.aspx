<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CoastalBendKidneyFoundation.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" SelectCommand="SELECT * FROM [Images]"></asp:SqlDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" Height="200px" Width="200px" runat="server" />
            <asp:Label ID="name" runat="server" Visible="false"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
