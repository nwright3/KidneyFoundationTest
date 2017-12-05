<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Admin Controls.aspx.cs" Inherits="CoastalBendKidneyFoundation.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        margin-left: 40px;
    }
        .auto-style14 {
        width: 924px;
    }
        .auto-style16 {
        width: 1005px;
        font-size: 20pt;
        height: 72px;
        float: left;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        
    <asp:SqlDataSource ID="EventConnection" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [Event]" DeleteCommand="DELETE FROM [Event] WHERE [Event_Id] = @Event_Id" InsertCommand="INSERT INTO [Event] ([Event_Name], [Event_Date], [Event_Place], [Event_Description], [Event_Attendance]) VALUES (@Event_Name, @Event_Date, @Event_Place, @Event_Description, @Event_Attendance)" UpdateCommand="UPDATE [Event] SET [Event_Name] = @Event_Name, [Event_Date] = @Event_Date, [Event_Place] = @Event_Place, [Event_Description] = @Event_Description, [Event_Attendance] = @Event_Attendance WHERE [Event_Id] = @Event_Id">
        <DeleteParameters>
            <asp:Parameter Name="Event_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Event_Name" Type="String" />
            <asp:Parameter Name="Event_Date" Type="String" />
            <asp:Parameter Name="Event_Place" Type="String" />
            <asp:Parameter Name="Event_Description" Type="String" />
            <asp:Parameter Name="Event_Attendance" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Event_Name" Type="String" />
            <asp:Parameter Name="Event_Date" Type="String" />
            <asp:Parameter Name="Event_Place" Type="String" />
            <asp:Parameter Name="Event_Description" Type="String" />
            <asp:Parameter Name="Event_Attendance" Type="Int32" />
            <asp:Parameter Name="Event_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" DeleteCommand="DELETE FROM [Images] WHERE [Img_Id] = @Img_Id" InsertCommand="INSERT INTO [Images] ([Img_Name], [Img_Order]) VALUES (@Img_Name, @Img_Order)" SelectCommand="SELECT * FROM [Images]" UpdateCommand="UPDATE [Images] SET [Img_Name] = @Img_Name, [Img_Order] = @Img_Order WHERE [Img_Id] = @Img_Id">
    <DeleteParameters>
        <asp:Parameter Name="Img_Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Img_Name" Type="String" />
        <asp:Parameter Name="Img_Order" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Img_Name" Type="String" />
        <asp:Parameter Name="Img_Order" Type="Int32" />
        <asp:Parameter Name="Img_Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" DeleteCommand="DELETE FROM [Admin] WHERE [Admin_ID] = @Admin_ID" InsertCommand="INSERT INTO [Admin] ([Admin_Username], [Admin_Password], [Admin_Email], [Admin_FName], [Admin_LName], [Admin_Country]) VALUES (@Admin_Username, @Admin_Password, @Admin_Email, @Admin_FName, @Admin_LName, @Admin_Country)" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Admin_Username] = @Admin_Username, [Admin_Password] = @Admin_Password, [Admin_Email] = @Admin_Email, [Admin_FName] = @Admin_FName, [Admin_LName] = @Admin_LName, [Admin_Country] = @Admin_Country WHERE [Admin_ID] = @Admin_ID">
        <DeleteParameters>
            <asp:Parameter Name="Admin_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Admin_Username" Type="String" />
            <asp:Parameter Name="Admin_Password" Type="String" />
            <asp:Parameter Name="Admin_Email" Type="String" />
            <asp:Parameter Name="Admin_FName" Type="String" />
            <asp:Parameter Name="Admin_LName" Type="String" />
            <asp:Parameter Name="Admin_Country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Admin_Username" Type="String" />
            <asp:Parameter Name="Admin_Password" Type="String" />
            <asp:Parameter Name="Admin_Email" Type="String" />
            <asp:Parameter Name="Admin_FName" Type="String" />
            <asp:Parameter Name="Admin_LName" Type="String" />
            <asp:Parameter Name="Admin_Country" Type="String" />
            <asp:Parameter Name="Admin_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [User] ([User_Username], [User_Password], [User_Email], [User_FName], [User_LName], [User_Country]) VALUES (@User_Username, @User_Password, @User_Email, @User_FName, @User_LName, @User_Country)" UpdateCommand="UPDATE [User] SET [User_Username] = @User_Username, [User_Password] = @User_Password, [User_Email] = @User_Email, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_Country] = @User_Country WHERE [User_ID] = @User_ID">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT [User_ID], [User_Email], [User_FName], [User_LName] FROM [User]"></asp:SqlDataSource>
    <p class="auto-style14">
        <strong>&nbsp;Admin Controls</strong><br />
  

            <br />
                <asp:Button ID="User_Control" runat="server" Text="User Controls" OnClick="User_Controls" Width="160px" Height="26px" />
            
        &nbsp;&nbsp;
                <asp:Button ID="Admin_Control" runat="server" Text="Admin Controls" Width="160px" OnClick="Admin_Controls" Height="26px" />
                   &nbsp;&nbsp;
                <asp:Button ID="Event_Control" runat="server" Text="Event Controls" Width="160px" OnClick="Event_Controls" Height="26px"  />
        
     &nbsp;&nbsp;      
          <asp:Button ID="Slide_Shw" runat="server" Text="Slide Show" Width="160px" OnClick="Slide_Show" Height="26px" />
        &nbsp;&nbsp;
                <asp:Button ID="EMl_Btn" runat="server" Text="E-mail" Width="160px" OnClick="EMail_Btn" Height="26px" />
    <br>        
    </p>
<p class="auto-style16">
    &nbsp;</p>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource5" Visible="False" Width="800px" AutoGenerateColumns="False" DataKeyNames="User_ID" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" Height="500px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="User_ID" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="User_Username" HeaderText="Username" SortExpression="User_Username" />
                <asp:BoundField DataField="User_Password" HeaderText="Password" SortExpression="User_Password" />
                <asp:BoundField DataField="User_Email" HeaderText="User Email" SortExpression="User_Email" />
                <asp:BoundField DataField="User_FName" HeaderText="First Name" SortExpression="User_FName" />
                <asp:BoundField DataField="User_LName" HeaderText="Last Name" SortExpression="User_LName" />
                <asp:BoundField DataField="User_Country" HeaderText="Country" SortExpression="User_Country" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Button ID="CollapseUserControl" runat="server" OnClick="CollapseUserControl_Click" Text="Collapse" Visible="False" Width="160px" />
                   <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource4" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="500px" Width="800px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Admin_ID" HeaderText="Admin ID" InsertVisible="False" ReadOnly="True" SortExpression="Admin_ID" />
            <asp:BoundField DataField="Admin_Username" HeaderText="Admin Username" SortExpression="Admin_Username" />
            <asp:BoundField DataField="Admin_Password" HeaderText="Password" SortExpression="Admin_Password" />
            <asp:BoundField DataField="Admin_Email" HeaderText="Admin Email" SortExpression="Admin_Email" />
            <asp:BoundField DataField="Admin_FName" HeaderText="First Name" SortExpression="Admin_FName" />
            <asp:BoundField DataField="Admin_LName" HeaderText="Last Name" SortExpression="Admin_LName" />
            <asp:BoundField DataField="Admin_Country" HeaderText="Country" SortExpression="Admin_Country" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            
    <asp:Button ID="CollapseAdminControl" runat="server" OnClick="CollapseAdminControl_Click" Text="Collapse" Visible="False" Width="160px" />
    <br />
    <table id="EventTable" class="auto-style3 " style="visibility:visible;float:left" runat="server" visible="False">
        <tr>
            <td class="auto-style1">Event Name:</td>
            <td class="auto-style2">
                <asp:TextBox ID="EvtName" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Date:&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="EvtDate" runat="server" CssClass="auto-style4" Width="237px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Place:</td>
            <td class="auto-style2">
                <asp:TextBox ID="EvtPlace" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Description:</td>
            <td class="auto-style2">
                <br class="auto-style4" />
                <asp:TextBox ID="EvtDescription" runat="server" CssClass="auto-style4" Height="78px" Width="237px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
    <asp:Button ID="Create_Evnt" runat="server" OnClick="Create_Event" Text="Create Event" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="EventUpdateLabel" runat="server" Text="EventUpdateLabel" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br>
        <div class="container" style="width: 600px">
    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Event_Id" DataSourceID="EventConnection" ForeColor="#333333" GridLines="None" Visible="False" AllowSorting="True" Height="500px" Width="800px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Event_Id" HeaderText="Event ID" InsertVisible="False" ReadOnly="True" SortExpression="Event_Id" />
            <asp:BoundField DataField="Event_Name" HeaderText="Event Name" SortExpression="Event_Name" />
            <asp:BoundField DataField="Event_Date" HeaderText="Event Date" SortExpression="Event_Date" />
            <asp:BoundField DataField="Event_Place" HeaderText="Event Place" SortExpression="Event_Place" />
            <asp:BoundField DataField="Event_Description" HeaderText="Event Description" SortExpression="Event_Description" />
            <asp:BoundField DataField="Event_Attendance" HeaderText="Event Attendance" SortExpression="Event_Attendance" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            </div>
    </br>
    <asp:Button ID="CollapseEventControl" runat="server" Text="Collapse" Visible="False" Width="160px" OnClick="CollapseEventControl_Click" />
<br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Img_Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Visible="False" AllowSorting="True" Height="500px" Width="800px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Img_Id" HeaderText="Img_Id" InsertVisible="False" ReadOnly="True" SortExpression="Img_Id" />
            <asp:BoundField DataField="Img_Name" HeaderText="Img_Name" SortExpression="Img_Name" />
            <asp:BoundField DataField="Img_Order" HeaderText="Img_Order" SortExpression="Img_Order" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <asp:FileUpload ID="FileUpload1" runat="server" Text="No file choosen" Visible="False"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Before you insert, you must select a file first." ValidationGroup="ValGroupInsert">*</asp:RequiredFieldValidator>
        <asp:Button ID="btnUpload" runat="server" Text="Insert" OnClick="btnUpload_Click" ValidationGroup="ValGroupInsert" Visible="False" />
    <br />

                <asp:Button ID="CollapseSlideShow" runat="server" OnClick="CollapseSlideShow_Click" Text="Collapse" Visible="False" Width="160px" />
    <br />
    <br />
    <br />
    <link rel="stylesheet" href="/style/AdminConsole.css" type="text/css" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="1" Visible="False" />

    <div class="main">
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="500px" Width="800px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="User_ID" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="User_Email" HeaderText="User Email" SortExpression="User_Email" />
                <asp:BoundField DataField="User_FName" HeaderText="First Name" SortExpression="User_FName" />
                <asp:BoundField DataField="User_LName" HeaderText="Last Name" SortExpression="User_LName" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>

    <div class="content">
        <div>
            <asp:TextBox ID="txtSubject" runat="server" placeHolder="Subject" CssClass="subject" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject is a required field." ControlToValidate="txtSubject" Display="Dynamic" ForeColor="Red" ValidationGroup="1" Visible="False">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="txtBody" runat="server" placeHolder="Body" TextMode="MultiLine" CssClass="body" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Body is a required field." ControlToValidate="txtBody" Display="Dynamic" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" ValidationGroup="1" CssClass="send" Visible="False"/>
        </div>

        <div>
            <asp:CheckBox ID="sendAll" runat="server" Text="Send all" CssClass="checkBox" Visible="False"/>
        </div>
    </div>
    <br />
    <asp:Button ID="CollapseEmail" runat="server" Text="Collapse" Visible="False" Width="160px" OnClick="CollapseEmail_Click" />

 


    

    <p class="auto-style11">
        <br />
        <br />
        <br />
        <br />
</p>
</asp:Content>
