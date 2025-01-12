using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetopiaAnimalShelter.Pages
{
    public partial class register : System.Web.UI.Page
    {
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();  // Get the Username value
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string phone = txtPhone.Text.Trim();

            // Validate all required fields
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(lastName) || string.IsNullOrEmpty(phone))
            {
                lblMessage.Text = "All fields are required.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // If validation is successful, proceed with the database insertion
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Users (Username, Email, Password, FirstName, LastName, Phone) " +
                               "VALUES (@Username, @Email, @Password, @FirstName, @LastName, @Phone)";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);  // Add the Username parameter
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);  // Note: Hash the password before storing
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                command.Parameters.AddWithValue("@Phone", phone);

                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Registration successful!";

                        Response.Redirect("login.aspx");

                    }
                    else
                    {
                        lblMessage.Text = "Registration failed. Please try again.";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }
}