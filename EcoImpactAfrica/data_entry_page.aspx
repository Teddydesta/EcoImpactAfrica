<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="data_entry_page.aspx.cs" Inherits="EcoImpactAfrica.data_entry_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Other head elements -->

    <!-- Include the SnackbarJS library -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/snackbarjs/1.1.0/snackbar.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/snackbarjs/1.1.0/snackbar.min.js"></script>

    <div class="container">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-6">
                        <section class="panel">
                            <h2>Transport Emissions</h2>
                            <div class="panel-body">
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="txtregion"><b>Vehicle Type</b></asp:Label><br />
                                    <asp:DropDownList ID="txtregion" CssClass="form-control input-sm" runat="server">
                                        <asp:ListItem Text="Select" />
                                        <asp:ListItem Text="Car" />
                                        <asp:ListItem Text="Bus" />
                                        <asp:ListItem Text="Truck" />
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="txtcell"><b>Distance Travelled</b></asp:Label><br />
                                    <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtcell" class="form-control input-sm" placeholder="km "></asp:TextBox>
                                </div>

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

                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="txtfuelconsumed"><b>Fuel Efficiency</b></asp:Label><br />
                                    <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtfuelconsumed" class="form-control input-sm" placeholder="Mile"></asp:TextBox>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="col-lg-6">
                        <section class="panel">
                            <h2>Electricity Consumption</h2>
                            <div class="panel-body">
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

                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="TextBox1"><b>Electricity Usage</b></asp:Label><br />
                                    <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="TextBox1" class="form-control input-sm" placeholder="kwh "></asp:TextBox>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <asp:Button Text="Submit" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-success btn-lg" Width="350px" runat="server" />
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </div>

    <script type="text/javascript">
        function showSnackbar() {
            toastr.success('Data submitted successfully!');
        }
    </script>
</asp:Content>
