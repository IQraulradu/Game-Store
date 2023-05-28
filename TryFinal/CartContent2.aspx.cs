using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryFinal
{
    public partial class CartContent2 : System.Web.UI.Page
    {
        Cart myCart;

        List<OrderDetails> orders = new List<OrderDetails>();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["myCart"] == null)
            {
                Session["myCart"] = new Cart();
              
            }
            myCart = (Cart) Session["myCart"];
            if (!IsPostBack)
            {
                FillData();
            }

        }

        private void FillData()
        {
            gvShoppingCart.DataSource = myCart.Items;
            gvShoppingCart.DataBind();
            if (myCart.Items.Count == 0)
            {
                lblGrandTotal.Visible = false;
            }
            else
            {
                lblGrandTotal.Text = string.Format("Your order: {0:C}", myCart.GrandTotal);
                lblGrandTotal.Visible = true;
            }
        }

        protected void gvShoppingCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvShoppingCart.EditIndex= -1;
            FillData();
        }

        protected void gvShoppingCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myCart.Delete(e.RowIndex);
            FillData();
        }

        protected void gvShoppingCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtQuantity = (TextBox)gvShoppingCart.Rows[e.RowIndex].Cells[3].Controls[0];
            int quantity = Int32.Parse(txtQuantity.Text);
            myCart.Update(e.RowIndex, quantity);
            gvShoppingCart.EditIndex = -1;
            FillData();

        }

        protected void gvShoppingCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvShoppingCart.EditIndex = e.NewEditIndex;
            FillData();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=DESKTOP-R8FJKCP\\SQLEXPRESS;Initial Catalog=gaming;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Parcurge fiecare rând din GridView
                foreach (GridViewRow row in gvShoppingCart.Rows)
                {
                    // Preia valorile pentru fiecare câmp din rând
                    string productName = row.Cells[0].Text;
                    string imageUrl = ((Image)row.Cells[1].Controls[0]).ImageUrl;
                    decimal price = decimal.Parse(row.Cells[2].Text, NumberStyles.Currency);
                    int quantity = int.Parse(row.Cells[3].Text);
                    decimal total = 0;
                    Label lblCommand = (Label)row.Cells[4].FindControl("Label1");
                    if (lblCommand != null)
                    {
                        total += decimal.Parse(lblCommand.Text, NumberStyles.Currency);
                    }

                    // Creează comanda SQL de inserare a datelor în baza de date
                    string sql = "INSERT INTO ComandaDB (ProductName, ImageUrl, Price, Quantity, Total) VALUES (@ProductName, @ImageUrl, @Price, @Quantity, @Total)";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        // Adaugă parametrii în comandă
                        command.Parameters.AddWithValue("@ProductName", productName);
                        command.Parameters.AddWithValue("@ImageUrl", imageUrl);
                        command.Parameters.AddWithValue("@Price", price);
                        command.Parameters.AddWithValue("@Quantity", quantity);
                        command.Parameters.AddWithValue("@Total", total);

                        // Execută comanda SQL
                        command.ExecuteNonQuery();
                    }
                }

                // Afisează un mesaj de confirmare utilizatorului
                lblCommand.Text = "Comanda a fost plasata cu succes!";
                lblCommand.Visible = true;
            }


        }
    }
}