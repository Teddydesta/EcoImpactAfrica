using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace EcoImpactAfrica
{
    public partial class data_entry_page : System.Web.UI.Page
    {
        //protected void btnsave_Click(object sender, EventArgs e)
        //{
        //    // Get entered data
        //    string vehicleType = txtregion.SelectedValue;
        //    double distanceTravelled = Convert.ToDouble(txtcell.Text);
        //    string fuelType = DropDownList1.SelectedValue;
        //    double fuelEfficiency = Convert.ToDouble(txtfuelconsumed.Text);
        //    string energySource = DropDownList2.SelectedValue;
        //    double electricityUsage = Convert.ToDouble(TextBox1.Text);

        //    // Create a new entry object
        //    EntryData entryData = new EntryData
        //    {
        //        EntryDate = DateTime.Now,
        //        VehicleType = vehicleType,
        //        DistanceTravelled = distanceTravelled,
        //        FuelType = fuelType,
        //        fuelEfficiency = fuelEfficiency,
        //        EnergySource = energySource,
        //        ElectricityUsage = electricityUsage
        //    };

        //    // Retrieve existing entries from Session or create a new list
        //    List<EntryData> entryList = Session["EntryList"] as List<EntryData> ?? new List<EntryData>();

        //    // Add the new entry to the list
        //    entryList.Add(entryData);

        //    // Save the updated list back to Session
        //    Session["EntryList"] = entryList;

        //    // Clear form fields or perform other actions as needed
        //    ClearFormFields();

        //    // Show the notification
        //    ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);
        //}

        protected void btnSubmitTransport_Click(object sender, EventArgs e)
        {
            // Get entered data
            string vehicleType = txtregion.SelectedValue;
            double distanceTravelled = Convert.ToDouble(txtcell.Text);
            string fuelType = DropDownList1.SelectedValue;
            double fuelEfficiency = Convert.ToDouble(txtfuelconsumed.Text);
            // Create a new entry object
            TransportEntryData entryData = new TransportEntryData
            {
                EntryDate = DateTime.Now,
                VehicleType = vehicleType,
                DistanceTravelled = distanceTravelled,
                FuelType = fuelType,
                fuelEfficiency = fuelEfficiency,
                
            };
            // Retrieve existing entries from Session or create a new list
            List<TransportEntryData> transportEntryList = Session["transportEntryList"] as List<TransportEntryData> ?? new List<TransportEntryData>();

            // Add the new entry to the list
            transportEntryList.Add(entryData);

            // Save the updated list back to Session
            Session["transportEntryList"] = transportEntryList;

            // Clear form fields or perform other actions as needed
            //ClearFormFields();

            // Show the notification
            ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);
        }

        

        private void ClearFormFields()
        {
            // Clear the form fields
            txtregion.SelectedIndex = 0;
            txtcell.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            txtfuelconsumed.Text = string.Empty;
           
        }

        // Other methods and classes...

        public class TransportEntryData
        {
            public DateTime EntryDate { get; set; }
            public string VehicleType { get; set; }
            public double DistanceTravelled { get; set; }
            public string FuelType { get; set; }
            public double fuelEfficiency { get; set; }
            
        }
    }
}


//using System;
//using System.Web.UI;

//namespace EcoImpactAfrica
//{
//    public partial class data_entry_page : Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//        }

//        protected void btnsave_Click(object sender, EventArgs e)
//        {
//            // Call the function to calculate the carbon footprint
//            double transportEmissions = CalculateTransportEmissions();
//            double electricityEmissions = CalculateElectricityEmissions();

//            // You can use the calculated values as needed (e.g., store in a database, display on the page, etc.)

//            // Show a success message
//            ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);
//        }

//        private double CalculateTransportEmissions()
//        {
//            // Get values from the form
//            string vehicleType = txtregion.SelectedValue;
//            double distanceTraveled = Convert.ToDouble(txtcell.Text);
//            string fuelType = DropDownList1.SelectedValue;
//            double fuelEfficiency = Convert.ToDouble(txtfuelconsumed.Text);

//            // Define emission factors (replace with actual values)
//            double gasolineEmissionFactor = 2.31; // Example value in kg CO2 per liter
//            double dieselEmissionFactor = 2.68;   // Example value in kg CO2 per liter
//            double petrolEmissionFactor = 2.20;   // Example value in kg CO2 per liter
//            double electricEmissionFactor = 0.42; // Example value in kg CO2 per kWh

//            // Calculate emissions based on fuel type
//            double emissionFactor = 0;
//            switch (fuelType)
//            {
//                case "Gasoline":
//                    emissionFactor = gasolineEmissionFactor;
//                    break;
//                case "Diesel":
//                    emissionFactor = dieselEmissionFactor;
//                    break;
//                case "Petrol":
//                    emissionFactor = petrolEmissionFactor;
//                    break;
//                case "Electric":
//                    emissionFactor = electricEmissionFactor;
//                    break;
//                default:
//                    // Handle other cases if needed
//                    break;
//            }

//            // Calculate transport emissions
//            double transportEmissions = (distanceTraveled / fuelEfficiency) * emissionFactor;
//            return transportEmissions;
//        }

//        private double CalculateElectricityEmissions()
//        {
//            // Get values from the form
//            string energySource = DropDownList2.SelectedValue;
//            double electricityUsage = Convert.ToDouble(TextBox1.Text);

//            // Define emission factors for electricity sources (replace with actual values)
//            double gridEmissionFactor = 0.45;  // Example value in kg CO2 per kWh
//            double solarEmissionFactor = 0.02; // Example value in kg CO2 per kWh
//            double windEmissionFactor = 0.03;  // Example value in kg CO2 per kWh
//            double electricEmissionFactor = 0.42; // Example value in kg CO2 per kWh

//            // Calculate emissions based on energy source
//            double emissionFactor = 0;
//            switch (energySource)
//            {
//                case "Grid":
//                    emissionFactor = gridEmissionFactor;
//                    break;
//                case "Solar":
//                    emissionFactor = solarEmissionFactor;
//                    break;
//                case "Wind":
//                    emissionFactor = windEmissionFactor;
//                    break;
//                case "Electric":
//                    emissionFactor = electricEmissionFactor;
//                    break;
//                default:
//                    // Handle other cases if needed
//                    break;
//            }

//            // Calculate electricity emissions
//            double electricityEmissions = electricityUsage * emissionFactor;
//            return electricityEmissions;
//        }
//    }
//}