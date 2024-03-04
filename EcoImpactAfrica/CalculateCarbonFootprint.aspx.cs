using System;

namespace EcoImpactAfrica
{
    public partial class CalculateCarbonFootprint : System.Web.UI.Page
    {
        protected void Calculate_Click(object sender, EventArgs e)
        {
            // Validate user input (you might want to add more validation)
            if (double.TryParse(MilesDriven.Text, out double milesDriven))
            {
                // Calculate carbon footprint (this is a simple example, you might have a more complex formula)
                double carbonFootprint = milesDriven * 0.5; // Adjust the multiplier based on your calculation

                // Display the result
                ResultMessage.Text = $"Your estimated carbon footprint is {carbonFootprint:F2} units.";
            }
            else
            {
                // Handle invalid input
                ResultMessage.Text = "Please enter a valid number for miles driven.";
            }
        }
    }
}
