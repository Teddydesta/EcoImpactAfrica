<%@ Page Title="Calculate Carbon Footprint" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CalculateCarbonFootprint.aspx.cs" Inherits="EcoImpactAfrica.CalculateCarbonFootprint" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <style>
        .form-control {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
}

.btn-success {
    background-color: #28a745;
    color: #fff;
}

        </style>
    <div style="margin-bottom: 260px;">
    <h2 class="text-success">Calculate Your Carbon Footprint</h2>
    <div>
        <asp:Label runat="server" AssociatedControlID="MilesDriven">Miles Driven:</asp:Label>
        <asp:TextBox runat="server" ID="MilesDriven" CssClass="form-control" />
        <!-- Add more input fields for other factors like energy consumption, waste, etc. -->

        <asp:Button runat="server" Text="Calculate" OnClick="Calculate_Click" CssClass="btn btn-success mt-3" />
    </div>
    <hr />
    <h4 class="text-success">Result:</h4>
    <asp:Literal runat="server" ID="ResultMessage" />
        </div>
</asp:Content>
