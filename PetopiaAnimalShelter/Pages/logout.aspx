<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Log Out</title>
</head>
<body>
    <script type="text/javascript">
        // Clear session and redirect to the home page
        sessionStorage.clear();
        window.location.href = "index.aspx";
    </script>
</body>
</html>
