using System;
using System.Linq;
using System.Collections.Generic; // Add this line for List<>
using EcoImpactAfrica; // Add the namespace where TransportEntryData and ElectricEntryData are defined
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
                var transportEntryList = Session["transportEntryList"] as List<TransportEntryData>;
                var electricEntryList = Session["electricEntryList"] as List<ElectricEntryData>;

                // Display transport emission data
                gvTransportEmission.DataSource = transportEntryList;
                gvTransportEmission.DataBind();

                // Display electricity consumption data
                gvElectricityConsumption.DataSource = electricEntryList;
                gvElectricityConsumption.DataBind();

                // Calculate total emissions
                double totalTransportEmission = transportEntryList.Sum(item => item.transportEmission);
                double totalElectricityEmission = electricEntryList.Sum(item => item.electricityEmissions);

                double result = totalTransportEmission + totalElectricityEmission;
                // Display the result in the ResultMessage control
                //ResultMessage.Text = $"Total Transport Emission: {totalTransportEmission} kg CO2e<br />" +
                //                     $"Total Electricity Emission: {totalElectricityEmission} kg CO2e";
                ResultMessage1.Text = Convert.ToString(result);
            }
        }
    }
}
