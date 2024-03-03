using System;
using System.Data;

namespace EcoImpactAfrica
{
    public partial class view_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Sample data for Transport Emission
                DataTable transportData = new DataTable();
                transportData.Columns.Add("EntryDate", typeof(DateTime));
                transportData.Columns.Add("VehicleType", typeof(string));
                transportData.Columns.Add("DistanceTravelled", typeof(decimal));
                transportData.Columns.Add("FuelType", typeof(string));
                transportData.Columns.Add("FuelConsumed", typeof(decimal));

                transportData.Rows.Add(DateTime.Now.AddDays(-2), "Car", 150.5, "Gasoline", 20.8);
                transportData.Rows.Add(DateTime.Now.AddDays(-1), "Truck", 300.2, "Diesel", 40.3);
                transportData.Rows.Add(DateTime.Now, "Motorcycle", 50.8, "Petrol", 10.2);

                gvTransportEmission.DataSource = transportData;
                gvTransportEmission.DataBind();

                // Sample data for Electricity Consumption
                DataTable electricityData = new DataTable();
                electricityData.Columns.Add("EntryDate", typeof(DateTime));
                electricityData.Columns.Add("EnergySource", typeof(string));
                electricityData.Columns.Add("ElectricityUsage", typeof(decimal));

                electricityData.Rows.Add(DateTime.Now.AddDays(-2), "Refrigerator", 150);
                electricityData.Rows.Add(DateTime.Now.AddDays(-1), "Air Conditioner", 1200);
                electricityData.Rows.Add(DateTime.Now, "Computer", 200);

                gvElectricityConsumption.DataSource = electricityData;
                gvElectricityConsumption.DataBind();
            }
        }

        // Your code here
    }
}
