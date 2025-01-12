using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetopiaAnimalShelter.Pages
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                // Clear the session when logging out
                Session.Clear();
                Session.Abandon();

                // Redirect to the homepage or login page
                Response.Redirect("index.aspx");
        }
    }
}
