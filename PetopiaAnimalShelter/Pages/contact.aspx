<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Contact Us</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/Content/styles.css"/>
    <script src="/Scripts/app.js"></script>
</head>
<body>

    <div id="header"></div> <!-- Placeholder for the header -->

    <script>
        $(function () {
            $("#header").load("header.aspx"); // Load the header content from header.html
        });
    </script>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Contact Us</h2>
            <p>Please fill out the form below to get in touch with us:</p>

            <div>
                <asp:DropDownList ID="ddlAnimal" runat="server">
                    <asp:ListItem Text="Select an Animal" Value="0" />
                    <asp:ListItem Text="Dog" Value="1" />
                    <asp:ListItem Text="Cat" Value="2" />
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Enter your name"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Enter your email"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Placeholder="Enter your message"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
