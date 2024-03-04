using System;

namespace EcoImpactAfrica
{
    public partial class view_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the entry list from Session
                var entryList = Session["EntryList"] as System.Collections.Generic.List<EntryData>;

                // Display transport emission data
                gvTransportEmission.DataSource = entryList;
                gvTransportEmission.DataBind();

                // Display electricity consumption data
                gvElectricityConsumption.DataSource = entryList;
                gvElectricityConsumption.DataBind();
            }
        }
    }
}
