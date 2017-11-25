<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CoastalBendKidneyFoundation.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="main">
        <h2>Email our Development Team!</h2>

        <div>
            <asp:TextBox ID="txtFrom" runat="server" placeHolder="Your Email" TextMode="Email"></asp:TextBox>
        </div>

        <div>
            <asp:TextBox ID="txtPassword" runat="server" placeHolder="Your Email Account's Password" TextMode="Password"></asp:TextBox>
        </div>

        <div>
            <asp:TextBox ID="txtSubject" runat="server" placeHolder="Subject"></asp:TextBox>
        </div>

        <div>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="160px" Width="300px" placeHolder="Message"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
        </div>
    </div>

</asp:Content>
