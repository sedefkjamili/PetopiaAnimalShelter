<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dogs.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.dogs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Dogs</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/Content/styles.css"/>
    <script src="/Scripts/app.js"></script>
</head>

<body>
    <div id="header"></div> <!-- Placeholder for the header -->

    <script>
        $(function() {
            $("#header").load("header.aspx"); // Load the header content from header.html
        });
    </script>
    <div class="container mt-4">
        <div class="sort-bar text-center">
            <span>
                <b>Search by:</b>
                <input type='radio' name='pretraga' value="1" checked="checked" id="age-search"/> Age
                <input type='radio' name='pretraga' value="2" checked="checked" id="name-search"/> Name
                <input type="text" id="polje_pretrage" class="search-input" placeholder="Enter search term..."/>
                <button type="button" class="btn btn-dark search-btn" id="pretrazi">Search</button>
            </span>
        </div>
    </div>

<div>
    <div class="row" id="dog-list">
        <!-- Existing Dog Cards -->
        <div class="col-md-4 dog-card" data-name="Betty" data-age="3">
            <div class="card">
                <img src="/Content/Images/animal1.jpg" alt="Dog 1"/>
                <div class="card-body">
                    <h5 class="card-title">Betty</h5>
                    <p class="card-text">Age: 3 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 dog-card" data-name="Baileys" data-age="2">
            <div class="card">
                <img src="/Content/Images/animal2.png" alt="Dog 2"/>
                <div class="card-body">
                    <h5 class="card-title">Baileys</h5>
                    <p class="card-text">Age: 2 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 dog-card" data-name="Charlie" data-age="4">
            <div class="card">
                <img src="/Content/Images/animal3.jpg" alt="Dog 3"/>
                <div class="card-body">
                    <h5 class="card-title">Charlie</h5>
                    <p class="card-text">Age: 4 years</p>
                </div>
            </div>
        </div>

        <!-- Additional Dog Cards -->
        <div class="col-md-4 dog-card" data-name="Max" data-age="5">
            <div class="card">
                <img src="/Content/Images/animal4.jpg" alt="Dog 4"/>
                <div class="card-body">
                    <h5 class="card-title">Max</h5>
                    <p class="card-text">Age: 5 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 dog-card" data-name="Rex" data-age="3">
            <div class="card">
                <img src="/Content/Images/animal5.jpg" alt="Dog 5"/>
                <div class="card-body">
                    <h5 class="card-title">Rex</h5>
                    <p class="card-text">Age: 3 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 dog-card" data-name="Buddy" data-age="2">
            <div class="card">
                <img src="/Content/Images/animal6.jpg" alt="Dog 6"/>
                <div class="card-body">
                    <h5 class="card-title">Buddy</h5>
                    <p class="card-text">Age: 2 years</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        // Function to filter dogs based on name or age
        $('#pretrazi').click(function () {
            var searchValue = $('#polje_pretrage').val().toLowerCase(); // Get the search term and convert to lowercase
            var searchByAge = $('#age-search').prop('checked'); // Check if Age search is selected
            var searchByName = $('#name-search').prop('checked'); // Check if Name search is selected
            var dogs = $('.dog-card');

            // Loop through all the dog cards
            dogs.each(function () {
                var dogName = $(this).data('name').toLowerCase();
                var dogAge = $(this).data('age');
                var match = false;

                if (searchByName && dogName.includes(searchValue)) {
                    match = true; // Name match found
                }
                if (searchByAge && dogAge == searchValue) {
                    match = true; // Age match found
                }

                // Show or hide the card based on whether it matches the search criteria
                if (match) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        });
    });
</script>


    <footer>
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

</body>

</html>