<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Registration</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/Content/styles.css"/>
</head>

<body>
    <div id="header"></div> <!-- Placeholder for the header -->

    <script>
        $(function () {
            $("#header").load("header.aspx"); // Load the header content from header.html
        });
    </script>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="text-center mb-4">Create an Account</h1>

                    <form id="registerForm" runat="server" method="post">

                        <div class="form-group">
                            <label for="username">Username:</label>
                            <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Username" required="required"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="email">Email:</label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email" required="required"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="password">Password:</label>
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="name">First Name:</label>
                            <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name" required="required"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="surname">Last Name:</label>
                            <asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name" required="required"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="phone">Phone Number:</label>
                            <asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Phone Number" required="required"></asp:TextBox>
                        </div>


                        <!-- Add the label for displaying messages -->
                        <div class="form-group text-center">
                            <asp:Label ID="lblMessage" runat="server" CssClass="text-center" />
                        </div>

                        <div class="form-group text-center">
                            <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-block" OnClick="btnSignUp_Click" />
                        </div>

                        <div class="form-group text-center">
                            <p>Already have an account? <a href="login.aspx" class="text-info">Log in</a></p>
                        </div>
                    </form>
            </div>
        </div>
    </div>

    <footer class="text-center mt-5">
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

    <script src="/Scripts/app.js"></script>
</body>

</html>
