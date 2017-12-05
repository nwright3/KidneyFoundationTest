<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Volunteer.aspx.cs" Inherits="CoastalBendKidneyFoundation.Volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" DeleteCommand="DELETE FROM [Event] WHERE [Event_ID] = @Event_ID" InsertCommand="INSERT INTO [Event] ([Event_ID], [Event_Name], [Event_Date], [Event_Place], [Event_Description]) VALUES (@Event_ID, @Event_Name, @Event_Date, @Event_Place, @Event_Description)" SelectCommand="SELECT * FROM [Event]" UpdateCommand="UPDATE [Event] SET [Event_Name] = @Event_Name, [Event_Date] = @Event_Date, [Event_Place] = @Event_Place, [Event_Description] = @Event_Description WHERE [Event_ID] = @Event_ID">
        <DeleteParameters>
            <asp:Parameter Name="Event_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Event_ID" Type="Int32" />
            <asp:Parameter Name="Event_Name" Type="String" />
            <asp:Parameter Name="Event_Date" Type="String" />
            <asp:Parameter Name="Event_Place" Type="String" />
            <asp:Parameter Name="Event_Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Event_Name" Type="String" />
            <asp:Parameter Name="Event_Date" Type="String" />
            <asp:Parameter Name="Event_Place" Type="String" />
            <asp:Parameter Name="Event_Description" Type="String" />
            <asp:Parameter Name="Event_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [Comments]"></asp:SqlDataSource>
    <br />

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
}
/* Style the header */
.header {
    background-color: #2bbc2b;
    padding: 50px;
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    text-decoration:none;
}

/* Container for flexboxes */
.row {
    display: -webkit-flex;
    display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    padding: 100px;
    height: 300px; /* Should be removed. Only for demonstration */
    font-size: 25px;
    text-align: left;
    line-height: 200%;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f1f1f1;
}

/* Style the footer */
.footer {
    background-color: #f1f1f1;
    padding: 10px;
    text-align: center;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .row {
      -webkit-flex-direction: column;
      flex-direction: column;
    }
}
    .auto-style5 {
        height: 198px;
        width: 603px;
        text-align: center;
        position: relative;
        left: 173px;
        top: -15px;
        margin-left: 805px;
        margin-right: 538px;
    }
    .auto-style6 {
        text-align: center;
        height: 345px;
        width: 1113px;
        float: left;
        margin-left: 190px;
    }
    .auto-style7 {
        height: 331px;
        width: 712px;
        float: right;
        margin-left: 0px;
    }
    .auto-style8 {
        float: left;
    }
    .auto-style9 {
        margin-left: 0px;
        margin-right: 272px;
        margin-bottom: 0px;
    }
    .auto-style10 {
        text-align: center;
    }
    .auto-style11 {
        margin-left: 763px;
        margin-right: 277px;
        margin-bottom: 4px;
    }
</style>
    <br />
    <div class="auto-style6">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="Event_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="336px" Width="1109px" CssClass="auto-style8">
            <EditItemTemplate>
                Event_ID:
                <asp:Label ID="Event_IDLabel1" runat="server" Text='<%# Eval("Event_Id") %>' />
                <br />
                Event_Name:
                <asp:TextBox ID="Event_NameTextBox" runat="server" Text='<%# Bind("Event_Name") %>' />
                <br />
                Event_Date:
                <asp:TextBox ID="Event_DateTextBox" runat="server" Text='<%# Bind("Event_Date") %>' />
                <br />
                Event_Place:
                <asp:TextBox ID="Event_PlaceTextBox" runat="server" Text='<%# Bind("Event_Place") %>' />
                <br />
                Event_Description:
                <asp:TextBox ID="Event_DescriptionTextBox" runat="server" Text='<%# Bind("Event_Description") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Event_ID:
                <asp:TextBox ID="Event_IDTextBox" runat="server" Text='<%# Bind("Event_Id") %>' />
                <br />
                Event_Name:
                <asp:TextBox ID="Event_NameTextBox" runat="server" Text='<%# Bind("Event_Name") %>' />
                <br />
                Event_Date:
                <asp:TextBox ID="Event_DateTextBox" runat="server" Text='<%# Bind("Event_Date") %>' />
                <br />
                Event_Place:
                <asp:TextBox ID="Event_PlaceTextBox" runat="server" Text='<%# Bind("Event_Place") %>' />
                <br />
                Event_Description:
                <asp:TextBox ID="Event_DescriptionTextBox" runat="server" Text='<%# Bind("Event_Description") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Event_IDLabel" runat="server" Text='<%# Eval("Event_Id") %>' Visible="False" />
                <br />
                <asp:Label ID="Event_NameLabel" runat="server" Text='<%# Bind("Event_Name") %>' />
                <br />
                <br />
                <asp:Label ID="Event_DateLabel" runat="server" Text='<%# Bind("Event_Date") %>' />
                <br />
                <br />
                <asp:Label ID="Event_PlaceLabel" runat="server" Text='<%# Bind("Event_Place") %>' />
                <br />
                <br />
                <asp:Label ID="Event_DescriptionLabel" runat="server" Text='<%# Bind("Event_Description") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
        </div>
        <div class="auto-style7">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="329px" NextPrevFormat="FullMonth" SelectedDate='<%# Eval("Event_ID") %>' Width="542px" CssClass="auto-style9">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <br />
        </div>
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />

    <br />
    <br />
    <div class="auto-style10">

        <asp:DataList ID="DataList1" runat="server" CellPadding="4" CssClass="auto-style11" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="118px" HorizontalAlign="Justify" Width="996px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                &nbsp;<asp:Label ID="Comment_NameLabel" runat="server" Text='<%# Eval("Comment_Name") %>' />
                :
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>

    </div>
    <br />

    <br />

    <div class="auto-style5">

        <br />
        <asp:TextBox ID="txtCommentName" runat="server" Height="21px" Width="325px">Your Name</asp:TextBox>
        <br />
        <asp:TextBox ID="txtComment" runat="server" Height="106px" Width="325px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Height="38px" Text="Submit" Width="76px" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />

    </div>

    </asp:Content>
