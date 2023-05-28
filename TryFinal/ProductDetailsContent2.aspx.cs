using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace TryFinal
{
    public partial class ProductDetailsContent2 : System.Web.UI.Page
    {
        Cart myCart;

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productID = Request.QueryString["ProductID"];
                if (productID != null)
                {
                    dlProduct1.DataSource = DataAccess.selectQuery("SELECT * FROM Products WHERE ProductID = " + productID);
                    dlProduct1.DataBind();
                }
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (Session["myCart"] == null)
            {
                myCart = new Cart();
                Session["myCart"] = myCart;
                
            }
            string productID = Request.QueryString["ProductID"];
            myCart = (Cart)Session["myCart"];
            DataTable dt = DataAccess.selectQuery("SELECT * FROM Products WHERE ProductID = " + productID);
            DataRow row = dt.Rows[0];
            myCart.Insert(new CartItem(Int32.Parse(productID),
                row["ProductName"].ToString(),
                row["ImageUrl"].ToString(),
                Double.Parse(row["Price"].ToString()),
                row["DESCRIPTION"].ToString(),
                 1));
            Response.Redirect("CartContent2.aspx");



        }
    }
}