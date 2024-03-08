<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SplashScreen.aspx.cs" Inherits="EcoImpactAfrica.SplashScreen" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Splash Screen</title>
    <style>
        body {
            margin: 0;
             color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        #splash-screen {
            background-image: url('login_background.png');
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
            font-size: 4rem;
            margin-top: 10px;
            color: white;
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
<%--            <img id="logo" src="splash-img.png" alt="Your Logo" />--%>
            <h1 id="title"> <i>
                <strong>Welcome to Your Carbon Calculator </strong>  </i>  </h1>
            <p id="description" style=" color: black; font-size: 20px"> <i><strong>Explore your environmental 
                impact and reduce your carbon footprint. </strong></i>

            </p>
            <a id="cta-button" href="Account/Login.aspx">Get Started</a>
        </div>
    </form>
</body>
</html>
