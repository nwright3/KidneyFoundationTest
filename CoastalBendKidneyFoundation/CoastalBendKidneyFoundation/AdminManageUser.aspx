<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdminManageUser.aspx.cs" Inherits="CoastalBendKidneyFoundation.AdminManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="User_ID">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
            <asp:BoundField DataField="User_Username" HeaderText="User_Username" SortExpression="User_Username" />
            <asp:BoundField DataField="User_Password" HeaderText="User_Password" SortExpression="User_Password" />
            <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
            <asp:BoundField DataField="User_FName" HeaderText="User_FName" SortExpression="User_FName" />
            <asp:BoundField DataField="User_LName" HeaderText="User_LName" SortExpression="User_LName" />
            <asp:BoundField DataField="User_Country" HeaderText="User_Country" SortExpression="User_Country" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    <br />
    
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [User] ([User_Username], [User_Password], [User_Email], [User_FName], [User_LName], [User_Country]) VALUES (@User_Username, @User_Password, @User_Email, @User_FName, @User_LName, @User_Country)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [User_Username] = @User_Username, [User_Password] = @User_Password, [User_Email] = @User_Email, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_Country] = @User_Country WHERE [User_ID] = @User_ID">
        <DeleteParameters>
            <asp:Parameter Name="User_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Username" Type="String" />
            <asp:Parameter Name="User_Password" Type="String" />
            <asp:Parameter Name="User_Email" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_Country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Username" Type="String" />
            <asp:Parameter Name="User_Password" Type="String" />
            <asp:Parameter Name="User_Email" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_Country" Type="String" />
            <asp:Parameter Name="User_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </asp:Content>
