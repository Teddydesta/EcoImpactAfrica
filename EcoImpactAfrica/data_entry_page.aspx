<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="data_entry_page.aspx.cs" Inherits="EcoImpactAfrica.data_entry_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading text-center">
                                <div class="col-md-4 col-md-offset-4">
                                    <h3>Transport Emissions</h3>
                                </div>
                            </header>
                            <div class="panel-body">
                                <div class="row" style="padding-bottom:20px">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtregion"><b>Vehicle Type</b></asp:Label><br />
                                            <asp:DropDownList ID="txtregion" CssClass="form-control input-sm" runat="server">
                                                <asp:ListItem Text="Select" />
                                                <asp:ListItem Text="Car" />
                                                <asp:ListItem Text="Bus" />
                                                <asp:ListItem Text="Truck" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <!-- Other form elements -->
                                </div>

                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtcell"><b>Distance Travelled</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtcell" class="form-control input-sm" placeholder="km "></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- Other form elements -->
                                </div>

                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DropDownList1"><b>Fuel Type</b></asp:Label><br />
                                            <asp:DropDownList ID="DropDownList1" CssClass="form-control input-sm" runat="server">
                                                <asp:ListItem Text="Select" />
                                                <asp:ListItem Text="Gasoline" />
                                                <asp:ListItem Text="Diesel" />
                                                <asp:ListItem Text="Petrol" />
                                                <asp:ListItem Text="Electric" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtfuelconsumed"><b>Fuel Consumed</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtfuelconsumed" class="form-control input-sm" placeholder="liters"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- Other form elements -->
                                </div>

                                <div id="electricitySection" style="display: none;">
                                    <h3>Electricity Consumption</h3>

                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="DropDownList2"><b>Energy Source</b></asp:Label><br />
                                                <asp:DropDownList ID="DropDownList2" CssClass="form-control input-sm" runat="server">
                                                    <asp:ListItem Text="Select" />
                                                    <asp:ListItem Text="Grid" />
                                                    <asp:ListItem Text="Solar" />
                                                    <asp:ListItem Text="Wind" />
                                                    <asp:ListItem Text="Electric" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="TextBox1"><b>Electricity Usage</b></asp:Label><br />
                                                <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="TextBox1" class="form-control input-sm" placeholder="kwh "></asp:TextBox>
                                            </div>
                                        </div>
                                        <!-- Other form elements -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="form-group text-center">
                                            <asp:Button Text="Next" ID="btnNext" OnClientClick="showElectricitySection(); return false;" CssClass="btn btn-primary btn-lg" Width="350px" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="form-group text-center">
                                            <asp:Button Text="Submit" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-success btn-lg" Width="350px" runat="server" Style="display: none;" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </section>
    </div>

    <script type="text/javascript">
        function showElectricitySection() {
            document.getElementById('electricitySection').style.display = 'block';
            document.getElementById('btnNext').style.display = 'none';  // Hide the "Next" button
            document.getElementById('btnsave').style.display = 'block'; // Show the "Submit" button
        }
</script>

</asp:Content>
