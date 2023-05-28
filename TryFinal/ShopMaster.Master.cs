using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryFinal
{
    public partial class ShopMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void searchButton_Click(object sender, EventArgs e)
        {

          /*  //Cautare produs dupa nume
            string searchTerm = searchBox.Text.Trim();

            string connectionString = "Data Source=DESKTOP-R8FJKCP\\SQLEXPRESS;Initial Catalog=gaming;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Products WHERE ProductName LIKE '%' + @searchTerm + '%'";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@searchTerm", searchTerm);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                productsGridView.DataSource = dataTable;
                productsGridView.DataBind();
            }
*/
            //Cautare dupa categorie 

            string searchTerm = searchBox.Text;
            string category = categoryList.SelectedValue;

            string query = "SELECT * FROM Products WHERE 1 = 1 ";

            if (!string.IsNullOrEmpty(searchTerm))
            {
                query += "AND ProductName LIKE @SearchTerm ";
            }

            if (!string.IsNullOrEmpty(category))
            {
                query += "AND Category = @Category ";
            }

            SqlCommand cmd = new SqlCommand(query);

            if (!string.IsNullOrEmpty(searchTerm))
            {
                cmd.Parameters.AddWithValue("@SearchTerm", "%" + searchTerm + "%");
            }

            if (!string.IsNullOrEmpty(category))
            {
                cmd.Parameters.AddWithValue("@Category", category);
            }

            DataTable dt = GetData(cmd);
            productsGridView.DataSource = dt;
            productsGridView.DataBind();
        }

        private DataTable GetData(SqlCommand cmd)
        {
            string constr = ConfigurationManager.ConnectionStrings["GamingConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }

    }
}