<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="add_electric.aspx.cs" Inherits="EcoImpactAfrica.add_electric" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Other head elements -->

    <!-- Include the SnackbarJS library -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/snackbarjs/1.1.0/snackbar.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/snackbarjs/1.1.0/snackbar.min.js"></script>
    <style>
        img{
            max-width: 300px
        }
    </style>
    <div class="container">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
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

                                <div class="form-group text-center">
                                    <asp:Button Text="Submit" ID="btnSubmitElectricity" OnClick="btnSubmitElectricity_Click" CssClass="btn btn-success btn-lg" Width="350px" runat="server" />
                                </div>
                            </div>
                        </section>
                    </div>

                    <!-- New column for the image -->
                    <div class="col-lg-6">
                        <img src="electric.jpg" alt="Your Image Alt Text" class="img-fluid" style="width: 100%; height: 400px;"/>
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
