﻿<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AdminManageSlideshow.aspx.cs" Inherits="CoastalBendKidneyFoundation.AdminManageSlideshow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Img_Id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="408px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="Img_Id" SortExpression="Img_Id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Img_Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Img_Id") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="lblInsert" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Img_Name" SortExpression="Img_Name">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Img_Name") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Img_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Img_Order" SortExpression="Img_Order">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Img_Order") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Img_Order") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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

    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" Text="No file choosen"/>
        &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Before you insert, you must select a file first." ValidationGroup="ValGroupInsert">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpload" runat="server" Text="Insert" OnClick="btnUpload_Click" ValidationGroup="ValGroupInsert" />
        <br />
    </div>

    <br />

    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString2 %>" DeleteCommand="DELETE FROM [Images] WHERE [Img_Id] = @Img_Id" InsertCommand="INSERT INTO [Images] ([Img_Id], [Img_Name], [Img_Order]) VALUES (@Img_Id, @Img_Name, @Img_Order)" SelectCommand="SELECT * FROM [Images]" UpdateCommand="UPDATE [Images] SET [Img_Name] = @Img_Name, [Img_Order] = @Img_Order WHERE [Img_Id] = @Img_Id">
        <DeleteParameters>
            <asp:Parameter Name="Img_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Img_Id" Type="Int32" />
            <asp:Parameter Name="Img_Name" Type="String" />
            <asp:Parameter Name="Img_Order" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Img_Name" Type="String" />
            <asp:Parameter Name="Img_Order" Type="Int32" />
            <asp:Parameter Name="Img_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
