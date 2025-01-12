using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace PetopiaAnimalShelter.Pages
{
    public partial class addAd : Page
    {
        // Connection string for your PetopiaDB database
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void btnAddAd_Click(object sender, EventArgs e)
        {
            // Retrieve form field values
            string petName = txtPetName.Text;
            string description = txtDescription.Text;
            string phoneNumber = txtPhoneNumber.Text;

            // Validate form data: Check if all fields are filled
            if (string.IsNullOrEmpty(petName) || string.IsNullOrEmpty(description) || string.IsNullOrEmpty(phoneNumber))
            {
                lblMessage.Text = "Please fill in all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate phone number (simple validation to check if it's a valid number format)
            if (!System.Text.RegularExpressions.Regex.IsMatch(phoneNumber, @"^\+?\d{10,15}$"))
            {
                lblMessage.Text = "Please enter a valid phone number.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Handle photo upload
            string photoPath = null;
            if (fileUploadPhoto.HasFile)
            {
                // Validate the file type (only JPG, JPEG, and PNG are allowed)
                string fileExtension = Path.GetExtension(fileUploadPhoto.FileName).ToLower();
                if (fileExtension != ".jpg" && fileExtension != ".jpeg" && fileExtension != ".png")
                {
                    lblMessage.Text = "Please upload a valid image file (JPG, PNG).";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Save the uploaded image to the server (in the Images folder)
                string imageFolderPath = Server.MapPath("~/Images/");

                // Ensure the folder exists, create it if necessary
                if (!Directory.Exists(imageFolderPath))
                {
                    Directory.CreateDirectory(imageFolderPath);
                }

                // Create a unique file name (to avoid overwriting existing files)
                string photoFileName = Guid.NewGuid().ToString() + Path.GetExtension(fileUploadPhoto.FileName);
                string filePath = Path.Combine(imageFolderPath, photoFileName);

                // Save the file to the directory
                fileUploadPhoto.SaveAs(filePath);

                // Set the photo path for saving to the database
                photoPath = "Images/" + photoFileName;
            }

            // Save the ad to the database
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO LostAnimals (petName, description, phoneNumber, photoPath) " +
                                   "VALUES (@PetName, @Description, @PhoneNumber, @PhotoPath)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@PetName", petName);
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@PhotoPath", photoPath ?? (object)DBNull.Value); // If no photo, insert null

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                // If everything is successful, show a success message
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Advertisement added successfully!";

                // Optionally, clear the form after successful submission
                txtPetName.Text = "";
                txtDescription.Text = "";
                txtPhoneNumber.Text = "";
                fileUploadPhoto.Attributes.Clear();  // Clear the file upload control
            }
            catch (Exception ex)
            {
                // Show an error message if something goes wrong
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
