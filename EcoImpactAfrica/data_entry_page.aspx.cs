
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Web.UI;


namespace EcoImpactAfrica
{
    public partial class data_entry_page : System.Web.UI.Page
    {
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


            double transportEmission = CalculateTransportEmissions(fuelType, distanceTravelled, fuelEfficiency);

            // Display the result
            ResultMessage.Text = $"Your estimated carbon footprint is: {transportEmission} kg CO2e";

            // Clear form fields
            ClearFormFields();

            // Show the notification
            ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);

        }
        public class TransportEntryData
        {
            public DateTime EntryDate { get; set; }
            public string VehicleType { get; set; }
            public double DistanceTravelled { get; set; }
            public string FuelType { get; set; }
            public double fuelEfficiency { get; set; }
        }
        private double CalculateTransportEmissions(string fuelType, double distanceTravelled, double fuelEfficiency)
        {
            // Define emission factors (replace with actual values)
                        double gasolineEmissionFactor = 2.31; // Example value in kg CO2 per liter
                        double dieselEmissionFactor = 2.68;   // Example value in kg CO2 per liter
                        double petrolEmissionFactor = 2.20;   // Example value in kg CO2 per liter
                        double electricEmissionFactor = 0.42; // Example value in kg CO2 per kWh

            // Calculate emissions based on energy source
            double emissionFactor = 0;
                        switch (fuelType)
                        {
                            case "Gasoline":
                                emissionFactor = gasolineEmissionFactor;
                                break;
                            case "Diesel":
                                emissionFactor = dieselEmissionFactor;
                                break;
                            case "Petrol":
                                emissionFactor = petrolEmissionFactor;
                                break;
                            case "Electric":
                                emissionFactor = electricEmissionFactor;
                                break;
                            default:
                                // Handle other cases if needed
                                break;
                        }


            // Calculate electricity emissions
            double transportEmissions = (distanceTravelled / fuelEfficiency) * emissionFactor;


            return transportEmissions;
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
    }
}

