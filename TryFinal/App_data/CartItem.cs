using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TryFinal
{
    public class CartItem
    {

        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string ImageUrl { get; set; }
        public string DESCRIPTION { get; set; }
        public double Price { get; set; }
        public int Quantity { get; set; }

        public CartItem()
        {
            
        }

        public CartItem(int ProductID, string ProductName, string ImageUrl, double Price, string DESCRIPTION,int Quantity)
        {
            this.ProductID = ProductID;
            this.ProductName = ProductName;
            this.ImageUrl = ImageUrl;
            this.Price = Price;
            this.DESCRIPTION = DESCRIPTION;
            this.Quantity = Quantity;
           
        }
    }
}