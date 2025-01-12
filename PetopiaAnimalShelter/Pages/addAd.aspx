<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addAd.aspx.cs" Inherits="PetopiaAnimalShelter.Pages.addAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Petopia - Add an Ad</title>
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
            <div class="row text-center center-div-form">
                <h3>Add an Advertisement</h3>
                <table class="table table-dark table-striped" id="table" style="width: 350px; margin: auto;">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPetName" runat="server" CssClass="form-control" Placeholder="Pet's Name" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control" Placeholder="Description" Rows="5" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" Placeholder="Phone Number" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="fileUploadPhoto" runat="server" CssClass="form-control" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <asp:Button ID="btnAddAd" runat="server" Text="Add Advertisement" CssClass="btn pink-background" OnClick="btnAddAd_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    <footer>
        <p>Copyright 2024, Sedef Kjamili, Department of Computer Engineering, Ankara University.</p>
    </footer>

</body>

</html>
