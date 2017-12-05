<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="CoastalBendKidneyFoundation.AdminContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="/style/AdminConsole.css" type="text/css" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT [User_ID], [User_Email], [User_FName], [User_LName] FROM [User]"></asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="1" />

    <div class="main">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
                <asp:BoundField DataField="User_FName" HeaderText="User_FName" SortExpression="User_FName" />
                <asp:BoundField DataField="User_LName" HeaderText="User_LName" SortExpression="User_LName" />
            </Columns>
        </asp:GridView>
    </div>

    <div class="content">
        <div>
            <asp:TextBox ID="txtSubject" runat="server" placeHolder="Subject" CssClass="subject"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject is a required field." ControlToValidate="txtSubject" Display="Dynamic" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="txtBody" runat="server" placeHolder="Body" TextMode="MultiLine" CssClass="body"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Body is a required field." ControlToValidate="txtBody" Display="Dynamic" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" ValidationGroup="1" CssClass="send"/>
        </div>

        <div>
            <asp:CheckBox ID="sendAll" runat="server" Text="Send all" CssClass="checkBox"/>
        </div>
    </div>
</asp:Content>
