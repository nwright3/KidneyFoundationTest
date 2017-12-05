<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CoastalBendKidneyFoundation.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="/style/Home.css" type="text/css" runat="server" />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CostalbendKidneyFoundationConnectionString3 %>" SelectCommand="SELECT * FROM [Images]"></asp:SqlDataSource>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="1" />

    <div class="gallery">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:Image ID="Image1" Height="300px" Width="1000px" runat="server" />
                <asp:Label ID="name" runat="server" Visible="true"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <div class="main">
        <article>
            <h3>Mission Statement</h3>
            <p>
                To facilitate programs, services and educational opportunities designed specifically to serve the needs of kidney disease patients in our community to include 
                the counties of Nueces, Jim Wells, Live Oak, Bee, Refugio, Aransas, San Patricio, Kleberg, Brooks and Kenedy.
            </p>
            <h3 class="goals">Goals</h3>
            <p>
                Our goals are to expand public awareness about kidney disease and the need for organ donation through public education,
and provide educational opportunities for health care professionals,
and expand programs and services to meet increasing needs in our community,
and stage special events to further develop donor relationships with foundations, corporations and individuals.
            </p>
            <h3>History</h3>
            <p>
                For over 43 years, the Coastal Bend Kidney Foundation (formerly the National Kidney Foundation of the Texas Coastal Bend) has provided programs and services 
                vital to kidney disease patients and their families throughout South Texas. In recent years, the rate at which kidney disease has grown in South Texas is 
                exponential and community support has become essential.
            </p>
            <p>
                In 2006, our Board of Directors chose to end our association with the national organization and form a new organization that focuses our programs and services 
                solely on the needs specific to kidney patients in the Coastal Bend. As the vast majority of our financial support comes from the ten counties we serve, we feel 
                an obligation to better serve those areas with our available resources. The Nutritional Supplement Program and The Pediatric Nephrology Program will be stronger 
                than ever and a new Community Education Program will be implemented to more effectively reach our patient constituency. Organ transplantation and donation will 
                continue to be an important focus, as well.
            </p>
            <p>
                CBKF is served by a board of directors, which includes representatives from renal patients, health professionals, and corporate and community leaders. Our activities 
                are managed on a daily basis by Executive Director, Becky Gardner, and a contracted support staff.
            </p>
            <p>
                CBKF is an active member of the South Texas community. Our agency actively networks with Driscoll Children’s Hospital system, area dialysis units, and renal professionals. 
                We are also members of the South Texas Planned Giving Council sponsored by the Coastal Bend Community Foundation. It is our goal to widen our networking system to continue
                to better serve South Texas.
            </p>

            <h3 class="contactTitle">Contact Us</h3>

            <div class="contact" id="contact">
                <div><asp:TextBox ID="txtName" runat="server" placeHolder="Name" CssClass="textboxes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is a required field." ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
                <div><asp:TextBox ID="txtEmail" runat="server" placeHolder="Email" TextMode="Email" CssClass="textboxes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is a required field." ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
                <div><asp:TextBox ID="txtSubject" runat="server" placeHolder="Subject" CssClass="textboxes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubject" Display="Dynamic" ErrorMessage="Subject is a required field." ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
                <div><asp:TextBox ID="txtBody" runat="server" placeHolder="Body" TextMode="MultiLine" CssClass="comment"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBody" Display="Dynamic" ErrorMessage="Body is a required field." ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" CssClass="send" ValidationGroup="1"/></div>
            </div>
        </article>
    </div>

    <div>

        <footer>Coppyright @ CostalbendKidneyFoundation</footer>

    </div>

</asp:Content>
