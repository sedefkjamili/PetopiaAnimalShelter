<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lostpets.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.lostpets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Lost pets</title>
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

    <div class="container">
        <h3 class="text-center my-4">Lost Pets</h3>

        <!-- Repeater to display the lost pets -->
        <div class="row">
            <asp:Repeater ID="rptLostPets" runat="server">
                <ItemTemplate>
                    <div class="col-md-6 col-sm-12 mb-4">
                        <div class="card">
                            <img src='<%# ResolveUrl("~/" + Eval("photoPath")) %>' alt="Pet Photo" class="card-img-top" />
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("petName") %></h5>
                                <p class="card-text"><%# Eval("description") %></p>
                                <p><strong>Contact:</strong> <%# Eval("phoneNumber") %></p>

                                <!-- Comment Section -->
                                <div class="comment-section mt-4">
                                    <h6>Leave a Comment</h6>
                                    <div class="form-group">
                                        <label for="fullName_<%# Eval("petName") %>">Full Name:</label>
                                        <input type="text" id="fullName_<%# Eval("petName") %>" class="form-control" placeholder="Enter your full name" />
                                    </div>
                                    <div class="form-group">
                                        <label for="comment_<%# Eval("petName") %>">Comment:</label>
                                        <textarea id="comment_<%# Eval("petName") %>" class="form-control" placeholder="Enter your comment" rows="3"></textarea>
                                    </div>
                                    <button type="button" class="btn btn-primary" onclick="addComment('<%# Eval("petName") %>')">Add Comment</button>

                                    <!-- Display Comments -->
                                    <div id="comments_<%# Eval("petName") %>" class="mt-3">
                                        <!-- Comments will be populated here from localStorage -->
                                    </div>
                                   <!--<div class="text-center my-3">
                                        <button type="button"  onclick="clearCommentsHistory()">Clear All Comment History</button>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <script>
        // Function to add a comment and store it in localStorage
        function addComment(petName) {
            var fullName = document.getElementById("fullName_" + petName).value;
            var comment = document.getElementById("comment_" + petName).value;

            if (fullName && comment) {
                // Get existing comments from localStorage, or initialize if none
                var storedComments = JSON.parse(localStorage.getItem(petName)) || [];

                // Add new comment to the array
                storedComments.push({ name: fullName, comment: comment });

                // Save updated comments back to localStorage
                localStorage.setItem(petName, JSON.stringify(storedComments));

                // Display the new comment
                displayComments(petName);

                // Clear the input fields after adding the comment
                document.getElementById("fullName_" + petName).value = "";
                document.getElementById("comment_" + petName).value = "";
            } else {
                alert("Please fill in both your name and the comment.");
            }
        }

        // Function to display comments from localStorage
        function displayComments(petName) {
            var commentsDiv = document.getElementById("comments_" + petName);
            var storedComments = JSON.parse(localStorage.getItem(petName)) || [];

            commentsDiv.innerHTML = ''; // Clear previous comments

            storedComments.forEach(function (commentObj) {
                var commentBox = document.createElement("div");
                commentBox.classList.add("comment-box");
                commentBox.innerHTML = "<p><strong>" + commentObj.name + ":</strong> " + commentObj.comment + "</p>";

                commentsDiv.appendChild(commentBox);
            });
        }

        function clearCommentsHistory() {
            for (var key in localStorage) {
                if (localStorage.hasOwnProperty(key)) {
                    localStorage.removeItem(key);
                }
            }
            alert("All comment history has been cleared.");
        }


        // Function to load comments when the page is loaded
        window.onload = function () {
            var pets = document.querySelectorAll('.comment-section');
            pets.forEach(function (pet) {
                var petName = pet.querySelector('button').getAttribute('onclick').match(/'(.*?)'/)[1];
                displayComments(petName);
            });
        };
    </script>

    <footer>
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

</body>

</html>