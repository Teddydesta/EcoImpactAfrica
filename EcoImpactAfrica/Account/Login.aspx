<%@ Page Title="Log in" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcoImpactAfrica.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<asp:Literal runat="server" ID="FailureText" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            background-size: cover;
            background-color: #2c3e50;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #loginForm {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 500px;
        }

        #loginForm h2 {
            text-align: center;
            color: limegreen;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .checkbox {
            margin-top: 10px;
        }

        #RememberMe {
            margin-right: 10px;
        }

        #LogInBtn {
            background-color: #2c3e50;
            color: white;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #RegisterLink {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: darkgreen;
        }

        #socialLoginForm {
            margin-top: 20px;
        }

        /* Added label styles */
        .form-label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="loginForm" runat="server">
        <div>
            <h2><strong>WELCOME BACK</strong></h2>
            <hr style="height:1px; background-color: #2c3e50; max-width: auto"/>
            <div class="form-group">
                <span class="form-label">Email:</span>
                <asp:TextBox runat="server" ID="Email" CssClass="form-control input-sm" TextMode="Email" placeholder="Enter your email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
            <div class="form-group">
                <span class="form-label">Password:</span>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" placeholder="Enter your password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <asp:CheckBox runat="server" ID="RememberMe" />
                    <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                </div>
            </div>
            <div class="form-group">
                <asp:Button runat="server" OnClick="LogIn" Text="LOG IN" CssClass="btn btn-primary btn-lg" ID="LogInBtn" />
            </div>
            <p>
                <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" ForeColor="darkgreen">Register as a new user</asp:HyperLink>
            </p>
        </div>
        <div id="socialLoginForm">
            <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
        </div>
    </form>
</body>
</html>
