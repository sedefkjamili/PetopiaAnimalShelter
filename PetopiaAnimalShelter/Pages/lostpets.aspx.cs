using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetopiaAnimalShelter.Pages
{
    public partial class lostpets : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve and display the lost pets
                LoadLostPets();
            }
        }

        private void LoadLostPets()
        {
            // SQL query to retrieve lost pet details from the database
            string query = "SELECT petName, description, phoneNumber, photoPath FROM LostAnimals";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    // Fill the data table with the result set
                    da.Fill(dt);

                    // Bind the data to the Repeater control
                    rptLostPets.DataSource = dt;
                    rptLostPets.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle the error and display a user-friendly message
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}