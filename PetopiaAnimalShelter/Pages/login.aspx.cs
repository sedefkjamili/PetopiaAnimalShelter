using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace PetopiaAnimalShelter.Pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Validate inputs
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Email and Password are required.";
                return;
            }

            // Connect to the database
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Password, Role FROM Users WHERE Email = @Email"; // Including Role in the query

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", email);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();
                        string storedPassword = reader["Password"].ToString();
                        string role = reader["Role"].ToString(); // Get the Role from the database

                        // Validate the password (hashing recommended for production)
                        if (storedPassword == password)
                        {
                            // Successful login, store session data
                            Session["Email"] = email;
                            Session["Role"] = role; // Store the role in session

                            Response.Write("Role: " + Session["Role"]); // Debugging line

                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Login successful!";

                            // Redirect to the index page to load the role-based content
                            Response.Redirect("index.aspx"); // This will refresh and reload the page
                        }
                        else
                        {
                            lblMessage.Text = "Invalid email or password.";
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid email or password.";
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