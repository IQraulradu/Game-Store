using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryFinal
{
    public partial class StreamingMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dataTable = new DataTable();
                string connectionString = ConfigurationManager.ConnectionStrings["GamingConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM Products";
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    dataAdapter.Fill(dataTable);
                }
                productsGridView.DataSource = dataTable;
                productsGridView.DataBind();
            }
        }

        protected void calculateButton_Click(object sender, EventArgs e)
        {

            decimal totalPrice = 0;
            for (int i = 0; i < productsGridView.Rows.Count; ++i)
            {
                GridViewRow row = productsGridView.Rows[i];
                TextBox quantityTextBox = (TextBox)row.FindControl("quantityTextBox");
                int quantity = Convert.ToInt32(quantityTextBox.Text);
                decimal price = Convert.ToDecimal(row.Cells[2].Text.Trim('$'));

                int availableQuantity;
                if (!int.TryParse(row.Cells[3].Text, out availableQuantity))
                {
                    availableQuantity = 0;
                }

                if (quantity > availableQuantity)
                {
                    errorMessageLabel.Text = "Stoc insuficient! Cantitatea disponibila este " + availableQuantity.ToString();


                }

                if (quantity > availableQuantity)
                {
                    string productName = row.Cells[1].Text;
                    string errorMessage = string.Format("Selecteaza o cantitate mai mica {0} este in stock, cantitatea este mult prea mare.", productName);
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('" + errorMessage + "');", true);
                    return;
                }

                totalPrice += quantity * price;
            }
            totalPriceLabel.Text = totalPrice.ToString("C");

        }


    }




}