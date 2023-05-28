using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TryFinal
{
    public class OrderDetails
    {
        public string ProductName { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public decimal Total { get; set; }

        public OrderDetails() { }

        public OrderDetails(string productName, string imageUrl, decimal price, int quantity, decimal total)
        {
            this.ProductName = productName;
            this.ImageUrl = imageUrl;
            this.Price = price;
            this.Quantity = quantity;
            this.Total = total;
        }
    }
}