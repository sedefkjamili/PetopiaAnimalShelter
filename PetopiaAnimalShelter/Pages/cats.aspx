<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cats.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.cats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Cats</title>
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
    <div class="row" id="cat-list">
        <!-- Dynamic Cat Cards will be inserted here -->
        <div class="col-md-4 cat-card" data-name="Whiskers" data-age="3">
            <div class="card">
                <img src="/Content/Images/cat1.jpg" alt="Cat 1"/>
                <div class="card-body">
                    <h5 class="card-title">Whiskers</h5>
                    <p class="card-text">Age: 3 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 cat-card" data-name="Mittens" data-age="2">
            <div class="card">
                <img src="/Content/Images/cat2.jpg" alt="Cat 2"/>
                <div class="card-body">
                    <h5 class="card-title">Mittens</h5>
                    <p class="card-text">Age: 2 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 cat-card" data-name="Felix" data-age="4">
            <div class="card">
                <img src="/Content/Images/cat3.jpg" alt="Cat 3"/>
                <div class="card-body">
                    <h5 class="card-title">Felix</h5>
                    <p class="card-text">Age: 4 years</p>
                </div>
            </div>
        </div>

        <!-- Additional Cats -->
        <div class="col-md-4 cat-card" data-name="Luna" data-age="2">
            <div class="card">
                <img src="/Content/Images/cat4.jpg" alt="Cat 4"/>
                <div class="card-body">
                    <h5 class="card-title">Luna</h5>
                    <p class="card-text">Age: 2 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 cat-card" data-name="Simba" data-age="5">
            <div class="card">
                <img src="/Content/Images/cat5.jpg" alt="Cat 5"/>
                <div class="card-body">
                    <h5 class="card-title">Simba</h5>
                    <p class="card-text">Age: 5 years</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 cat-card" data-name="Oliver" data-age="1">
            <div class="card">
                <img src="/Content/Images/cat6.jpg" alt="Cat 6"/>
                <div class="card-body">
                    <h5 class="card-title">Oliver</h5>
                    <p class="card-text">Age: 1 year</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        // Function to filter cats based on name or age
        $('#pretrazi').click(function () {
            var searchValue = $('#polje_pretrage').val().toLowerCase(); // Get the search term and convert to lowercase
            var searchByAge = $('#age-search').prop('checked'); // Check if Age search is selected
            var searchByName = $('#name-search').prop('checked'); // Check if Name search is selected
            var cats = $('.cat-card');

            // Loop through all the cat cards
            cats.each(function () {
                var catName = $(this).data('name').toLowerCase();
                var catAge = $(this).data('age');
                var match = false;

                if (searchByName && catName.includes(searchValue)) {
                    match = true; // Name match found
                }
                if (searchByAge && catAge == searchValue) {
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