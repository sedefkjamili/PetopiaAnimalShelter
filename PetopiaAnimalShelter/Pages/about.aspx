<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - About us</title>
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

    <div class="align-items-center center-div-roze">
        <div class='row'>
            <div class="col-sm-1"></div>
            <div class='col-sm-10'>
                <div class="bg-white rounded py-3 px-4 my-5" style='display: flex; flex-direction: column; text-align: justify; text-justify: inter-word;'>
                    <h1 class="text-center mb-3">About us</h1>
                    <p><strong>Welcome to Petiopia!</strong></p>
                    <p>At Petiopia, we believe that every pet deserves a loving home and a second chance. Founded with a passion for animal welfare, our mission is to connect homeless pets with caring families while fostering a compassionate community dedicated to animal rescue and advocacy.</p>
                    <p><strong>Our Vision</strong></p>
                    <p>Petiopia envisions a world where all pets are cherished and supported, ensuring they receive the love and care they need to thrive. We aim to be a leading resource for pet adoption, education, and community involvement, making a lasting impact on the lives of both pets and their human companions.</p>
                    <p><strong>Our Mission</strong></p>
                    <p>Our mission is to rescue, rehabilitate, and rehome abandoned and neglected animals. We work tirelessly to provide a safe and nurturing environment for our pets, offering them medical care, socialization, and training to prepare them for adoption. We also strive to educate the public about responsible pet ownership and the importance of spaying and neutering to reduce overpopulation.</p>
                    <p><strong>What We Do</strong></p>
                    <ul>
                        <li><strong>Adoption Services:</strong> We facilitate the adoption process by matching potential pet owners with their ideal companions. Our team conducts thorough assessments to ensure a perfect fit between pets and families.</li>
                        <li><strong>Rescue and Rehabilitation:</strong> Our dedicated volunteers and staff work around the clock to rescue animals in need, providing them with medical treatment and a safe haven until they find their forever homes.</li>
                        <li><strong>Community Outreach:</strong> We engage with the community through events, workshops, and educational programs, promoting responsible pet ownership and advocating for animal rights.</li>
                    </ul>
                    <p><strong>Join Us</strong></p>
                    <p>We invite you to be a part of our journey! Whether you’re looking to adopt a pet, volunteer your time, or support our mission through donations, your involvement makes a difference. Together, we can create a brighter future for pets in need and build a compassionate community where every animal is valued and loved.</p>
                    <p>Thank you for visiting Petiopia. Let’s make a difference—one paw at a time!</p>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="mapouter">
                <div class="gmap_canvas">
                    <iframe class="map-iframe"
                            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12099.790728140147!2d32.8200128!3d39.7818655!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d3423274e2f30b%3A0x47bfec2be9776ed5!2sAnkara%20%C3%9Cniversitesi%20Bilgisayar%20M%C3%BChendisli%C4%9Fi%20B%C3%B6l%C3%BCm%C3%BC!5e0!3m2!1sen!2str!4v1637028730581"
                            width="1115" height="300" 
                            frameborder="0"
                            allign="center"
                            style="border:0;"
                            allowfullscreen=""
                            loading="lazy"
                            title="Google Map">
                    </iframe>
               
                </div>
            </div>
        </div>

    </div>
    <footer>
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

</body>

</html>