using System;
using static EcoImpactAfrica.data_entry_page;
using static EcoImpactAfrica.add_electric;

namespace EcoImpactAfrica
{
    public partial class view_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the entry list from Session
                var transportEntryList = Session["transportEntryList"] as System.Collections.Generic.List<TransportEntryData>;
                var electricEntryList = Session["electricEntryList"] as System.Collections.Generic.List<ElectricEntryData>;

                // Display transport emission data
                gvTransportEmission.DataSource = transportEntryList;
                gvTransportEmission.DataBind();


                // Display electricity consumption data
                gvElectricityConsumption.DataSource = electricEntryList;
                gvElectricityConsumption.DataBind();
            }


        }
    }
}
