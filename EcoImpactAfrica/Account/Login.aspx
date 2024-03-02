<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcoImpactAfrica.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        body {
            background-image: url('https://media.istockphoto.com/id/1173215102/photo/abstract-volcanic-landscape-in-the-highlands-of-iceland.webp?b=1&s=170667a&w=0&k=20&c=zbxWIoAHqDL_60ZQ_O8w20qmyOehhtHzJu14D13-t7U=');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin-bottom:0
        }

        main {
            padding: 50px;
        }

        #loginForm {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        #loginForm h4 {
            text-align: center;
            color: darkgreen;
            margin-bottom: 20px;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .checkbox {
            margin-top: 10px;
        }

        #RememberMe {
            margin-right: 10px;
        }

        #LogInBtn {
            background-color: darkgreen;
            width: 100%;
            padding: 10px;
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
    </style>

    <main aria-labelledby="title" class="row">
        <div class="col-md-8 offset-md-2" id="loginForm">
            <h4>WELCOME BACK</h4>
            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                <p class="text-danger">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
            </asp:PlaceHolder>
            <div class="row">
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control input-sm" TextMode="Email" placeholder="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
            </div>
            <div class="row">
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" placeholder="Password" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="col-md-7">
                <div class="offset-md-2 col-md-10">
                    <div class="checkbox">
                        <asp:CheckBox runat="server" ID="RememberMe" />
                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10">
                    <asp:Button runat="server" OnClick="LogIn" Text="LOG IN" CssClass="btn btn-primary btn-lg" ID="LogInBtn" />
                </div>
            </div>
            <p>
                <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" ForeColor="darkgreen">Register as a new user</asp:HyperLink>
            </p>
        </div>

        <div class="col-md-4 offset-md-2" id="socialLoginForm">
            <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
        </div>
    </main>
</asp:Content>
