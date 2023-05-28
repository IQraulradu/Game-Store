using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TryFinal
{
 
    public class Cart
    {

        public List<CartItem> Items { get; set; }

        public Cart() 
        {
            Items = new List<CartItem>();
        }

        private int ItemIndexof(int productID)
        {
            foreach (CartItem item in Items)
            {

                if (item.ProductID == productID)
                { 
                    return Items.IndexOf(item);
                }   
            }
            return -1;
            
        }

        public void Insert(CartItem item)
        {
            int index = ItemIndexof(item.ProductID);
            if (index == -1)
            {
                Items.Add(item);
            }
            else
            {
                Items[index].Quantity++;
            }
        }

        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }

        public void Update(int rowID, int Quantity)
        {
            if (Quantity > 0)
            {
                Items[rowID].Quantity = Quantity;

            }
            else
            {
                Delete(rowID);
            }
        }

        public double GrandTotal
        {
            get
            {
                if (Items == null)
                {
                    return 0;
                }
                else 
                {
                    double grandTotal = 0;
                    foreach (CartItem item in Items)
                    {
                        grandTotal += item.Price * item.Quantity;
                    }
                    return grandTotal;
                }
            }
        }
    }
}