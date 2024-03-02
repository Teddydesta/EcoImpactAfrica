<%@ Page Title="Data History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view_history.aspx.cs" Inherits="EcoImpactAfrica.view_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <!-- Left side with the image -->
                    <div class="col-md-3">
                        <img src="path_to_your_image.jpg" alt="Image" class="img-responsive" />
                    </div>

                    <!-- Right side with data history content -->
                    <div class="col-lg-9">
                        <section class="panel">
                            <header class="panel-heading text-center">
                                <div class="col-md-4 col-md-offset-4">
                                    <h3>Data History</h3>
                                </div>
                            </header>
                            <div class="panel-body">
                                <!-- ... Existing content ... -->
                                <asp:GridView ID="gvDataHistory" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <!-- Add columns as needed -->
                                        <asp:BoundField DataField="EntryDate" HeaderText="Entry Date" SortExpression="EntryDate" />
                                        <asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" SortExpression="VehicleType" />
                                        <asp:BoundField DataField="DistanceTravelled" HeaderText="Distance Travelled (km)" SortExpression="DistanceTravelled" />
                                        <asp:BoundField DataField="FuelType" HeaderText="Fuel Type" SortExpression="FuelType" />
                                        <asp:BoundField DataField="FuelConsumed" HeaderText="Fuel Consumed (liters)" SortExpression="FuelConsumed" />
                                    </Columns>
                                </asp:GridView>

                                <!-- ... Existing content ... -->

                                <!-- Your JavaScript function to toggle visibility -->
                                <script type="text/javascript">
                                    function showElectricitySection() {
                                        document.getElementById('electricityConsumptionSection').style.display = 'block';
                                        document.getElementById('btnNext').style.display = 'none';
                                        document.getElementById('btnsave').style.display = 'block';
                                    }
                                </script>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </section>
    </div>
</asp:Content>
