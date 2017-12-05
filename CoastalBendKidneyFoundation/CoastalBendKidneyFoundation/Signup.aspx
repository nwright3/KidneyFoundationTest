<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CoastalBendKidneyFoundation.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="signup" />

    <link rel="stylesheet" href="/style/Signup.css" type="text/css" runat="server"/>

    <div class="main">

        <h2>Signup</h2>

        <div class="flex-container">
            <div>
                <asp:TextBox runat="server" placeHolder="Username" ID="txtUsername" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Username must be filled out." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:TextBox runat="server" placeHolder="First Name" ID="txtFirstname" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstname" Display="Dynamic" ErrorMessage="First name must be filled out." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:TextBox runat="server" placeHolder="Last Name" ID="txtLastname" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname" Display="Dynamic" ErrorMessage="Last name must be filled out." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:TextBox runat="server" placeHolder="Email" ID="txtEmail" TextMode="Email" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email must be filled out." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:TextBox runat="server" placeHolder="Password" ID="txtPassword" TextMode="Password" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstname" Display="Dynamic" ErrorMessage="Password must be filled out." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:TextBox runat="server" placeHolder="Confirm Password" ID="txtRetypePassword" TextMode="Password" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRetypePassword" Display="Dynamic" ErrorMessage="Must confirm your password." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRetypePassword" Display="Dynamic" ErrorMessage="Password and confirm password are not the same." ToolTip="Password and confirm password must be the same." ForeColor="Red" ValidationGroup="signup">*</asp:CompareValidator>
            </div>

            <div>
                <asp:TextBox runat="server" placeHolder="Country" ID="txtCountry" CssClass="textboxes" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCountry" Display="Dynamic" ErrorMessage="Country must be filled out." ToolTip="This field is required." ForeColor="Red" ValidationGroup="signup">*</asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" OnClick="btnSubmit_Click" ValidationGroup="signup" CssClass="buttonSubmit" />
        </div>

        <br />

        <div>
            <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" OnClick="LinkButton1_Click">Already have an account? Login here!</asp:LinkButton>
        </div>

        <br />
    </div>


</asp:Content>
