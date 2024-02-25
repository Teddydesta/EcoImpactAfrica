<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EcoImpactAfrica._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle" style="margin-bottom:350px" >
            <h1 id="aspnetTitle">Carbon FootPrint Tracker Application</h1>
            <img src="carbon logo.png" style="max-width: 100%;height: 400px;"/>
              <p> A carbon footprint represents the annual amount of greenhouse gas emissions,  
                primarily <br> carbon dioxide (CO₂), resulting from specific activities.
                These emissions can be   direct or <br> indirect and stem from various sources, 
                including energy use, transportation,<br> manufacturing, and consumption of goods and services </p> 
            <p><a href="./Account/login.aspx" class="btn btn-primary btn-md" style="background-color:limegreen"> <strong> Login </strong>&raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
             
               
                
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                
            </section>
            <%--<section class="col-md-4" aria-labelledby="hostingTitle">
                
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>--%>
        </div>
    </main>

</asp:Content>
