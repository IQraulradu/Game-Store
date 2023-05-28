using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryFinal
{
    public partial class LeftMenuControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlMenu.DataSource = DataAccess.selectQuery("SELECT * FROM  CATEGORIES");
                dlMenu.DataBind();
            }

        }
    }
}