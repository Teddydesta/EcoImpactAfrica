<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EcoImpactAfrica.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
       <h2 style="color:limegreen"> <strong>Contact Us  </strong></h2>
       <h3>We would love to hear from you if you</h3>
        <p>
     Need help with compliance  <br>
    Are keen to develop strong sustainability credentials for your organisation    <br>
    Want to take your environmental programme to the next level<br>
    Are looking for high quality carbon offset projects to support<br>
        </p>
        <div class="contact-info">
<h3>Address</h3>
<p>
Carbon Footprint Ltd <br>
Belvedere House <br>
Basing View <br>
Basingstoke <br>
Hampshire, RG21 4HG, UK <br>
</p>
<h3>Phone</h3>
<p>+123-456-7890</p>
<h3>Email</h3>
<p>info@ecoimpactafrica.com</p>
</div>

        <%--<h3>Contact Form</h3>--%>
<%--<div class="contact-form">
<asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
<asp:TextBox ID="txtName" runat="server" placeholder="Your Name"></asp:TextBox><br />
<asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email"></asp:TextBox><br />
<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" placeholder="Your Message"></asp:TextBox><br />
<asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
</div>--%>

    </main >
</asp:Content>
