<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EcoImpactAfrica._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Carbon FootPrint Tracker Application</h1>
             <center> <p> A carbon footprint represents the annual amount of greenhouse gas emissions, 
                primarily carbon dioxide (CO₂), resulting from specific activities.
                These emissions can be direct or indirect and stem from various sources, 
                including energy use, transportation, manufacturing, and consumption of goods and services </p> </center> 
            <p><a href="./Account/login.aspx" class="btn btn-primary btn-md">Login &raquo;</a></p>
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
