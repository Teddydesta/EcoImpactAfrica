﻿<%@ Page Title="Data History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view_history.aspx.cs" Inherits="EcoImpactAfrica.view_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .my-table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
            border-radius: 10px;
            border-spacing: 0;
        }

        .my-table th,
        .my-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #e1e1e1;
        }

        .my-table th {
            background-color: #2c3e50; /* Green color */
            color: white;
        }

        .my-table tbody tr:hover {
            background-color: #2c3e50; 
        }
    </style>

    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <h2 class="text-center" style="color: limegreen"> <strong> <i>Your Data Reports </i> </strong></h2>

                <!-- Transport Emission Section -->
                <div id="transportEmissionSection">
                    <h3>Transport Emission</h3>
                    <asp:GridView ID="gvTransportEmission" runat="server" AutoGenerateColumns="False" CssClass="my-table">
                        <Columns>
                            <asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" SortExpression="VehicleType" />
                            <asp:BoundField DataField="DistanceTravelled" HeaderText="Distance Travelled (km)" SortExpression="DistanceTravelled" />
                            <asp:BoundField DataField="FuelType" HeaderText="Fuel Type" SortExpression="FuelType" />
                            <asp:BoundField DataField="fuelEfficiency" HeaderText="Fuel Efficiency (Mile)" SortExpression="fuelEfficiency" />
                            <asp:BoundField DataField="transportEmission" HeaderText="Carbon Footprint (kg CO2e)" SortExpression="transportEmission" />
                            <asp:BoundField DataField="EntryDate" HeaderText="Entry Date" SortExpression="EntryDate" />


                        </Columns>
                    </asp:GridView>
                </div>

                <!-- Electricity Consumption Section -->
                <div id="electricityConsumptionSection">
                    <h3>Electricity Consumption</h3>
                    <asp:GridView ID="gvElectricityConsumption" runat="server" AutoGenerateColumns="False" CssClass="my-table">
                        <Columns>
                            <asp:BoundField DataField="EnergySource" HeaderText="Energy Source" SortExpression="EnergySource" />
                            <asp:BoundField DataField="ElectricityUsage" HeaderText="Electricity Usage (kwh)" SortExpression="ElectricityUsage" />
                           <asp:BoundField DataField="electricityEmissions" HeaderText="Carbon Footprint (kg CO2e)" SortExpression="electricityEmissions" />
                            <%--<asp:BoundField DataField="ElectricResult" HeaderText="result" SortExpression="result" />--%>

                            <asp:BoundField DataField="EntryDate" HeaderText="Entry Date" SortExpression="EntryDate" />

                        </Columns>
                    </asp:GridView>

                </div>

                <!-- Other controls or buttons if needed -->
            </div>

            <!-- Left side with the image -->
            <div class="col-md-3">
                <img src="reprt.png" alt="Image" class="img-responsive" />
            </div>
           <%-- <hr />
          <asp:Literal runat="server" ID="ResultMessage" />--%>
                    <hr />
         <div class="row">
              <h5 class="text-success"> <strong>Your estimated total Carbon FootPrint is:: </strong> </h5>
             <asp:Literal runat="server" ID="ResultMessage1" />
             <hp class="">   kg CO2e</hp>
         </div>

             
        </div>
          
    </div>
</asp:Content>
