<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Log in</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/Content/styles.css"/>
    <script src="/Scripts/app.js"></script>
    <script type="text/javascript" src="~/scripts/adminview.js"></script>

</head>

<body>
    <div id="header"></div> <!-- Placeholder for the header -->

    <script>
        $(function () {
            $("#header").load("header.aspx"); // Load the header content from header.html
        });
    </script>

    <form id="form1" runat="server">
        <div class="row text-center center-div-form">
            <h3>Log Into Your Account</h3>
            <table class="table table-dark table-striped" id="table" style="width: 350px;">
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Email" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Password" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btn pink-background" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        Don't have an account? <a href="register.aspx" class="pink-text"> Sign up</a>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
        </div>
    </form>

    <footer>
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

</body>

</html>