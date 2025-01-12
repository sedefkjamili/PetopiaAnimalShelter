using System;
using System.Data;
using System.Data.SqlClient;

namespace PetopiaAnimalShelter.Pages
{
    public partial class index : System.Web.UI.Page
    {
        // Declare the connection string as a class-level field
        private readonly string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load and display lost pets
                LoadLostPets();
            }
        }

        private void LoadLostPets()
        {
            // SQL query to fetch lost pet details
            string query = "SELECT petName, description, phoneNumber, photoPath FROM LostAnimals";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    // Initialize SQL command and adapter
                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    // Fill the DataTable with results
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        // Bind the data to the Repeater control
                        rptLostPets.DataSource = dt;
                        rptLostPets.DataBind();
                    }
                    else
                    {
                        // Show a message if no lost pets are found
                        noLostPetsMessage.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error and display an alert
                Response.Write("<script>alert('An error occurred while loading lost pets: " + ex.Message + "');</script>");
            }
        }
    }
}
