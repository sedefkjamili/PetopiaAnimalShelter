<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="betty.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.WebForm1" %>

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

     <div class="container mt-5">
        <h3 class="text-center my-4">Betty - The Golden Dog</h3>

              <!-- A section to show a photo of Betty -->
     <div class="text-center mt-6">
         <img src="/Content/Images/animal1.jpg" alt="Betty the Dog" class="img-fluid" style="max-width: 300px;"/>
     </div>

        <!-- Betty's Information Table -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Attribute</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Name</strong></td>
                    <td>Betty</td>
                </tr>
                <tr>
                    <td><strong>Age</strong></td>
                    <td>3 Years</td>
                </tr>
                <tr>
                    <td><strong>Breed</strong></td>
                    <td>Golden Retriever</td>
                </tr>
                <tr>
                    <td><strong>Health Status</strong></td>
                    <td>Healthy</td>
                </tr>
                <tr>
                    <td><strong>Weight</strong></td>
                    <td>25 kg</td>
                </tr>
                <tr>
                    <td><strong>Vaccination Status</strong></td>
                    <td>Up to date</td>
                </tr>
                <tr>
                    <td><strong>Last Checkup</strong></td>
                    <td>October 2024</td>
                </tr>
                <tr>
                    <td><strong>Favorite Activity</strong></td>
                    <td>Playing fetch</td>
                </tr>
            </tbody>
        </table>

   
    </div>


    <script>
        $(function () {
            $("#header").load("header.aspx"); // Load the header content from header.html
        });
    </script>
=
</body>
</html>
