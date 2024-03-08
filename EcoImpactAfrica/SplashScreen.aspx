<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SplashScreen.aspx.cs" Inherits="EcoImpactAfrica.SplashScreen" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Splash Screen</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        #splash-screen {
            /*background-image: url('splash-bg.png');*/ /* Replace with your image path */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: darkslategray;
        }

        #logo {
            width: 800px; /* Adjust size as needed */
            border-radius:30px;
        }

        #title {
            font-size: 2rem;
            margin-top: 10px;
        }

        #description {
            font-size: 1.2rem;
            margin-top: 10px;
        }

        #cta-button {
            background-color: darkslategray; /* Green background */
            color: #ffffff; /* White text */
            padding: 10px 20px;
            font-size: 1.5rem;
            margin-top: 20px;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="splash-screen">
            <img id="logo" src="back_img.png" alt="Your Logo" />
            <h1 id="title">Welcome to Your Carbon Calculator</h1>
            <p id="description">Explore your environmental impact and reduce your carbon footprint.</p>
            <a id="cta-button" href="Account/Login.aspx">Get Started</a>
        </div>
    </form>
</body>
</html>
