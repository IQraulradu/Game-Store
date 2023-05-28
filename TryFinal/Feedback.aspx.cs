using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryFinal
{
    public partial class Feedback : System.Web.UI.Page
    {

        SqlFeedback hp = new SqlFeedback();
        FedbackDB bl = new FedbackDB();
        FeedbackMethod dl = new FeedbackMethod();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_ServerClick(object sender, EventArgs e)
        {
            InsertMethod();
        }

        void InsertMethod()
        {
            bl.Name = txtName.Value.ToString();
            bl.Email = txtEmail.Value.ToString();
            bl.Subject = txtSubject.Value.ToString();
            bl.Message = txtMessage.Value.ToString();
            bl.Insert(bl);
        }
    }
}