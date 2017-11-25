<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin Controls.aspx.cs" Inherits="CoastalBendKidneyFoundation.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        margin-left: 40px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function Event() {
            document.getElementById("EventTable").style.visibility = "visible";
            
            }
            </script>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [User] ([User_Username], [User_Password], [User_Email], [User_FName], [User_LName], [User_Country]) VALUES (@User_Username, @User_Password, @User_Email, @User_FName, @User_LName, @User_Country)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [User_Username] = @User_Username, [User_Password] = @User_Password, [User_Email] = @User_Email, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_Country] = @User_Country WHERE [User_ID] = @User_ID">
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
  

            
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString2 %>" DeleteCommand="DELETE FROM [Admin] WHERE [Admin_ID] = @Admin_ID" InsertCommand="INSERT INTO [Admin] ([Admin_Username], [Admin_Password], [Admin_Email], [Admin_FName], [Admin_LName], [Admin_Country]) VALUES (@Admin_Username, @Admin_Password, @Admin_Email, @Admin_FName, @Admin_LName, @Admin_Country)" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Admin_Username] = @Admin_Username, [Admin_Password] = @Admin_Password, [Admin_Email] = @Admin_Email, [Admin_FName] = @Admin_FName, [Admin_LName] = @Admin_LName, [Admin_Country] = @Admin_Country WHERE [Admin_ID] = @Admin_ID">
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
  

            
                <asp:Button ID="Button1" runat="server" Text="User Controls" OnClick="Button1_Click" Width="160px" />
            

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Visible="False" Width="732px" AutoGenerateColumns="False" DataKeyNames="User_ID">
            <Columns>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="User_Username" HeaderText="User_Username" SortExpression="User_Username" />
                <asp:BoundField DataField="User_Password" HeaderText="User_Password" SortExpression="User_Password" />
                <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
                <asp:BoundField DataField="User_FName" HeaderText="User_FName" SortExpression="User_FName" />
                <asp:BoundField DataField="User_LName" HeaderText="User_LName" SortExpression="User_LName" />
                <asp:BoundField DataField="User_Country" HeaderText="User_Country" SortExpression="User_Country" />
            </Columns>
        </asp:GridView>
        <br />
            
        <br>
                <asp:Button ID="Button2" runat="server" Text="Admin Controls" Width="160px" OnClick="Button2_Click" />
                   <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource2" Visible="False">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" InsertVisible="False" ReadOnly="True" SortExpression="Admin_ID" />
            <asp:BoundField DataField="Admin_Username" HeaderText="Admin_Username" SortExpression="Admin_Username" />
            <asp:BoundField DataField="Admin_Password" HeaderText="Admin_Password" SortExpression="Admin_Password" />
            <asp:BoundField DataField="Admin_Email" HeaderText="Admin_Email" SortExpression="Admin_Email" />
            <asp:BoundField DataField="Admin_FName" HeaderText="Admin_FName" SortExpression="Admin_FName" />
            <asp:BoundField DataField="Admin_LName" HeaderText="Admin_LName" SortExpression="Admin_LName" />
            <asp:BoundField DataField="Admin_Country" HeaderText="Admin_Country" SortExpression="Admin_Country" />
        </Columns>
    </asp:GridView>
            
        <br />
            
             </br>
    <br>
                <asp:Button ID="Button5" runat="server" Text="Event Controls" Width="160px"  />
        
     <br />
    <br />
    <asp:SqlDataSource ID="EventConnection" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;
    <table id="EventTable" class="auto-style3 " style="visibility:visible">
        <tr>
            <td class="auto-style1">Event Name:</td>
            <td class="auto-style2">
                <asp:TextBox ID="EvtName" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Event Date:&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="EvtDate" runat="server" CssClass="auto-style4" Width="237px"></asp:TextBox>
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
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" OnClick="Button1_Click" Text="Create Event" Visible="False" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="EventUpdateLabel" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />

     </br>
       <br>
                <asp:Button ID="Button4" runat="server" Text="E-mail" Width="160px" />
     </br>
    <br>      
          <asp:Button ID="Button3" runat="server" Text="Slide Show" Width="160px" />
        </br><br>   
                <asp:Button ID="Button6" runat="server" Text="{uNKNOWN}" Width="160px" />
       </br>
 


    

    <p class="auto-style11">
        <br />
        <br />
        <br />
        <br />
</p>
</asp:Content>
