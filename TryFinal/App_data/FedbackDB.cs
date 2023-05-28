using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TryFinal
{
    public class FedbackDB
    {

        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }

        public void Insert(FedbackDB bll)
        {
            FeedbackMethod dl = new FeedbackMethod();
            dl.Insert(bll);
        }
    }
}