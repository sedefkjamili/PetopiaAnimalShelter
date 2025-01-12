<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Home Page</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/Content/styles.css"/>
    <script src="/Scripts/app.js"></script>
    
    <style>

    </style>
</head>
<body>

    <div id="header"></div> <!-- Placeholder for the header -->
    <div class="image-container">
    <img src="/Content/Images/picture.png" alt="Welcome to Petopia" id="he" />
    </div>

    <script>
        $(function () {
            $("#header").load("header.aspx"); // Load the header content from header.html
        });
    </script>

    <div>
    <div class="row">

        <asp:Panel ID="noLostPetsMessage" runat="server" Visible="false">
            <p>No lost pets found.</p>
        </asp:Panel>
        
        <!-- New Animals Section -->
        <div class="section col-md-6 col-sm-12">
            <h2 class="cardmargin">New Animals</h2>
            <div class="card card-margin">
                <img src="/Content/Images/animal1.jpg" alt="Animal 1" class="card-img-top" />
                <div class="card-body">
                    <h5 class="card-title">Betty</h5>
                    <p class="card-text">A lovely golden dog looking for a home. Very friendly and playful.</p>
                    <a href="betty.aspx" class="btn btn-primary">Go to profile</a>
                </div>
            </div>
            <div class="card mt-3 card-margin">
                <img src="/Content/Images/animal2.png" alt="Animal 2" class="card-img-top" />
                <div class="card-body">
                    <h5 class="card-title">Baileys</h5>
                    <p class="card-text">A friendly companion awaits! Loves to be cuddled and played with.</p>
                    <a href="baileys.aspx" class="btn btn-primary">Go to profile</a>
                </div>
            </div>
        </div>

        <!-- Lost Pets Section -->
        <div class="section col-md-6 col-sm-12">
            <h2 class="cardmargin">Lost Pets</h2>
            <asp:Repeater ID="rptLostPets" runat="server">
                <ItemTemplate>
                    <div class="card mt-3 card-margin">
                        <img src='<%# ResolveUrl("~/" + Eval("photoPath")) %>' alt="Lost Pet Photo" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("petName") %></h5>
                            <p class="card-text"><%# Eval("description") %></p>
                            <p class="card-text">Phone: <%# Eval("phoneNumber") %></p>
                            <a href="contact.aspx" class="btn btn-primary">Contact Owner</a>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div> <!-- Closing the row div -->
    </div>

    <footer>
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

</body>
</html>