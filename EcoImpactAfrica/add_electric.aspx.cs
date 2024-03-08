
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Web.UI;


namespace EcoImpactAfrica
{
    public partial class add_electric : System.Web.UI.Page
    {
        protected void btnSubmitElectricity_Click(object sender, EventArgs e)
        {
            // Get entered data
            string energySource = DropDownList2.SelectedValue;
            double electricityUsage = Convert.ToDouble(TextBox1.Text);
            double electricityEmissions = CalculateElectricityEmissions(energySource, electricityUsage);

            // Create a new entry object
            ElectricEntryData entryData = new ElectricEntryData
            {
                EntryDate = DateTime.Now,
                EnergySource = energySource,
                ElectricityUsage = electricityUsage,
                electricityEmissions = electricityEmissions

            };
            // Retrieve existing entries from Session or create a new list
            List<ElectricEntryData> electricEntryList = Session["electricEntryList"] as List<ElectricEntryData> ?? new List<ElectricEntryData>();

            // Add the new entry to the list
            electricEntryList.Add(entryData);

            // Save the updated list back to Session
            Session["electricEntryList"] = electricEntryList;
            // Get values from the form
            //string energySource1 = DropDownList2.SelectedValue;
            //double electricityUsage1 = Convert.ToDouble(TextBox1.Text);
            // Perform computation and get the result
            // Display the result
            ResultMessage.Text = $"Your estimated carbon footprint is: {electricityEmissions} kg CO2e";

            // Clear form fields
            ClearFormFields();
            // Show the notification
            ScriptManager.RegisterStartupScript(this, GetType(), "showSnackbar", "showSnackbar();", true);

        }
        public class ElectricEntryData
        {
            public DateTime EntryDate { get; set; }
            public string EnergySource { get; set; }
            public double ElectricityUsage { get; set; }
            public double electricityEmissions { get; set; }

        }
        private double CalculateElectricityEmissions(string energySource, double electricityUsage)
        {
            // Define emission factors for electricity sources (replace with actual values)
            double gridEmissionFactor = 0.45;  // Example value in kg CO2 per kWh
            double solarEmissionFactor = 0.02; // Example value in kg CO2 per kWh
            double windEmissionFactor = 0.03;  // Example value in kg CO2 per kWh
            double electricEmissionFactor = 0.42; // Example value in kg CO2 per kWh

            // Calculate emissions based on energy source
            double emissionFactor = 0;
            switch (energySource)
            {
                case "Grid":
                    emissionFactor = gridEmissionFactor;
                    break;
                case "Solar":
                    emissionFactor = solarEmissionFactor;
                    break;
                case "Wind":
                    emissionFactor = windEmissionFactor;
                    break;
                case "Electric":
                    emissionFactor = electricEmissionFactor;
                    break;
                default:
                    // Handle other cases if needed
                    break;
            }

            // Calculate electricity emissions
            double electricityEmissions = electricityUsage * emissionFactor;

            return electricityEmissions;
        }

        private void ClearFormFields()
        {
            // Clear the form fields
            DropDownList2.SelectedIndex = 0;
            TextBox1.Text = string.Empty;
        }

        // Other methods and classes...
    }
}