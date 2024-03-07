<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EcoImpactAfrica._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container mt-5">
        <style>
            h1.text-success,
            h2.text-success {
                color: #2196F3; /* Material Blue */
                animation: fadeInUp 1s ease-out;
            }

            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(20px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .lead {
                color: #555;
            }

            .rounded-img {
                border-radius: 15px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            }

            .feature-box {
                background-color: #f8f9fa; /* Light Gray */
                padding: 20px;
                border-radius: 10px;
                margin-bottom: 20px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            }

            .btn-success-custom {
                background-color: #2c3e50; /* Dark Slate Gray */
                color: #fff;
            }

            .btn-success-custom:hover {
                background-color: #34495e; /* Slightly darker shade on hover */
            }

            .why-matters {
                color: #2196F3; /* Material Blue */
            }
        </style>

        <section class="row text-center">
            <div class="col-md-12">
                <h1 class="display-4 text-success">Explore Your Carbon Footprint</h1>
                <p class="lead">Discover the environmental impact of your daily activities and find ways to reduce your carbon footprint.</p>
            </div>
        </section>

        <section class="row mt-5">
            <div class="col-md-6">
                <img src="back_img.png" class="img-fluid rounded-img" alt="Carbon Footprint">
            </div>
            <div class="col-md-6">
                <h2 class="mb-4 text-success" style="color: #2c3e50 !important"> <i>What is a Carbon Footprint? </i></h2>
                <p class="text-muted">
                    A carbon footprint represents the total amount of greenhouse gases, specifically carbon dioxide, that are emitted directly or indirectly by an individual, organization, event, or product throughout its lifecycle.
                </p>
                <p class="text-muted">
                    Understanding your carbon footprint is crucial for making informed decisions to minimize environmental impact.
                </p>
            </div>
        </section>

        <section class="row mt-5">
            <div class="col-md-12 text-center">
                <h2 class="mb-4 text-success" style="color: #2c3e50 !important"> <i>How Can You Reduce Your Carbon Footprint?</i></h2>
            </div>
            <div class="col-md-4 feature-box">
                <h3 class="text-success">1. Sustainable Transportation</h3>
                <p class="text-muted">
                    Opt for eco-friendly transportation options like biking, walking, or using public transport to reduce carbon emissions.
                </p>
            </div>
            <div class="col-md-4 feature-box">
                <h3 class="text-success">2. Energy Conservation</h3>
                <p class="text-muted">
                    Conserve energy at home and use renewable energy sources to minimize your contribution to carbon emissions.
                </p>
            </div>
            <div class="col-md-4 feature-box">
                <h3 class="text-success">3. Waste Reduction</h3>
                <p class="text-muted">
                    Practice recycling, composting, and reducing waste to lower the environmental impact of waste disposal.
                </p>
            </div>
        </section>

        <section class="row mt-5">
            <div class="col-md-12 text-center">
                <a href="data_entry_page.aspx" class="btn btn-lg btn-success btn-success-custom">Calculate Your Footprint</a>
            </div>
        </section>

        <section class="row mt-5">
            <div class="col-md-12">
                <h2 class="mb-4 why-matters text-center">Why It Matters</h2>
                <p class="text-muted">
                    Understanding and reducing your carbon footprint is essential for creating a sustainable future. By making conscious choices in your daily life, you contribute to environmental preservation, resource conservation, and the overall well-being of our planet.
                </p>
            </div>
        </section>
    </main>
</asp:Content>
