using System;
using System.Collections.Generic;

namespace EcoImpactAfrica
{
    public partial class data_entry_page : System.Web.UI.Page
    {
        protected void btnsave_Click(object sender, EventArgs e)
        {
            // Get entered data
            string vehicleType = txtregion.SelectedValue;
            double distanceTravelled = Convert.ToDouble(txtcell.Text);
            string fuelType = DropDownList1.SelectedValue;
            double fuelConsumed = Convert.ToDouble(txtfuelconsumed.Text);
            string energySource = DropDownList2.SelectedValue;
            double electricityUsage = Convert.ToDouble(TextBox1.Text);

            // Create a new entry object
            EntryData entryData = new EntryData
            {
                EntryDate = DateTime.Now,
                VehicleType = vehicleType,
                DistanceTravelled = distanceTravelled,
                FuelType = fuelType,
                FuelConsumed = fuelConsumed,
                EnergySource = energySource,
                ElectricityUsage = electricityUsage
            };

            // Retrieve existing entries from Session or create a new list
            List<EntryData> entryList = Session["EntryList"] as List<EntryData> ?? new List<EntryData>();

            // Add the new entry to the list
            entryList.Add(entryData);

            // Save the updated list back to Session
            Session["EntryList"] = entryList;

            // Clear form fields or perform other actions as needed
            ClearFormFields();

            // You may redirect the user to another page or display a success message
        }

        private void ClearFormFields()
        {
            // Clear the form fields
            txtregion.SelectedIndex = 0;
            txtcell.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            txtfuelconsumed.Text = string.Empty;
            DropDownList2.SelectedIndex = 0;
            TextBox1.Text = string.Empty;
        }
    }

    public class EntryData
    {
        public DateTime EntryDate { get; set; }
        public string VehicleType { get; set; }
        public double DistanceTravelled { get; set; }
        public string FuelType { get; set; }
        public double FuelConsumed { get; set; }
        public string EnergySource { get; set; }
        public double ElectricityUsage { get; set; }
    }
}
