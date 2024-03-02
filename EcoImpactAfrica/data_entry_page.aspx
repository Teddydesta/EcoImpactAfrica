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
                                    <!-- Form elements -->
                                </div>

                                <div class="row">
                                    <!-- Form elements -->
                                </div>

                                <div class="row">
                                    <!-- Form elements -->
                                </div>

                                <div id="electricitySection" style="display: none;">
                                    <h3>Electricity Consumption</h3>

                                    <div class="row">
                                        <!-- Form elements -->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="form-group text-center">
                                            <asp:Button Text="Next" ID="btnNext" OnClientClick="showElectricitySection(); return true;" CssClass="btn btn-primary btn-lg" Width="350px" runat="server" />
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
