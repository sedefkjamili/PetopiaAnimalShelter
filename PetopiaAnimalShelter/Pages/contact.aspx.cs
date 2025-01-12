using System;
using System.Data.SqlClient;

namespace PetopiaAnimalShelter.Pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // Get input values
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string message = txtMessage.Text.Trim();

                // Validate inputs
                if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(message))
                {
                    ShowAlert("All fields are required. Please fill out the form completely.");
                    return;
                }

                // Save to database
                SaveToDatabase(name, email, message);

                // Clear the form
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMessage.Text = string.Empty;

                // Display success message
                ShowAlert("Thank you for contacting us! Your message has been submitted.");
            }
            catch (Exception ex)
            {
                ShowAlert("An error occurred while processing your request. Please try again later.");
                System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
            }
        }

        private void SaveToDatabase(string name, string email, string message)
        {
            // Retrieve the connection string from Web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = "INSERT INTO ContactSubmissions (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Message", message);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void ShowAlert(string message)
        {
            string script = $"alert('{message.Replace("'", "\\'")}');";
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, true);
        }
    }
}
