<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="data_entry_page.aspx.cs" Inherits="EcoImpactAfrica.data_entry_page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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

                                <!-- Add an image to the right -->
                               

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
                                <div class="form-group text-center">
                                    <asp:Button Text="Submit" ID="btnSubmitTransport" OnClick="btnSubmitTransport_Click" CssClass="btn btn-success btn-lg" Width="350px" runat="server" />
                                </div>
                            </div>
                        </section>
                    </div>


                      <!-- New column for the image -->
 <div class="col-lg-6">
     <img src="transport.png" alt="Your Image Alt Text" class="img-fluid" style="width: 100%; height: 500px;"/>
 </div>
                </div>
                                <hr />
<h4 class="text-success">Result:</h4>
<asp:Literal runat="server" ID="ResultMessage" />
            </section>
        </section>
    </div>

    <script type="text/javascript">
        function showSnackbar() {
            toastr.success('Data submitted successfully!');
        }
    </script>
</asp:Content>
