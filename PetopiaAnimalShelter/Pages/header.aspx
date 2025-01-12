<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="header.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.header" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <div class="header text-center">
        <img src="/Content/Images/logo.png"/>
        <h1>Saving Lives, One Paw at a Time.</h1>
    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="display: flex; justify-content: space-around;">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active" href="index.aspx">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Animals</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="dogs.aspx">Dogs</a></li>
                    <li><a class="dropdown-item" href="cats.aspx">Cats</a></li>
                </ul>
            </li>

            <!-- Lost Pets link shown only if the user is logged in -->
            <li class="nav-item" id="lostPetsLink" runat="server" visible="false">
                <a class="nav-link" href="lostPets.aspx">Lost Pets</a>
            </li>

            <!-- Add an Ad link shown only if the user is logged in -->
            <li class="nav-item" id="addAdLink" runat="server" visible="false">
                <a class="nav-link" href="addAd.aspx">Add an Ad</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="about.aspx">About Us</a>
            </li>
            
            <!-- Log In / Log Out Link -->
            <li class="nav-item" id="account">
                <% if (Session["Email"] != null) { %>
                    <a class="nav-link" href="logout.aspx">Log Out</a>
                <% } else { %>
                    <a class="nav-link" href="login.aspx">Log In</a>
                <% } %>
            </li>
        </ul>
    </nav>

</body>
</html>
