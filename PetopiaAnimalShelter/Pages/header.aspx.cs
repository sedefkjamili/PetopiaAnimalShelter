using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetopiaAnimalShelter.Pages
{
    public partial class header : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the session variable "Email" exists (i.e., user is logged in)
            if (Session["Email"] != null)
            {
                // User is logged in, show the hidden links
                lostPetsLink.Visible = true;   // Show Lost Pets
                addAdLink.Visible = true;      // Show Add an Ad
            }
            else
            {
                // User is not logged in, keep the links hidden
                lostPetsLink.Visible = false;
                addAdLink.Visible = false;
            }

        }
    }
}

