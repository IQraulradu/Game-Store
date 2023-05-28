using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TryFinal
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\CURS PROGRAMARE\\Proiect final CURS\\TryFinal\\TryFinal\\App_data\\Register.mdf\";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Table] where Email_id = @Email and Password = @Password";
            SqlCommand com = new SqlCommand(check, con);
            com.Parameters.AddWithValue("@Email", usertxt.Text);
            com.Parameters.AddWithValue("@Password", passwordtxt.Text);
            con.Open();
            int tmp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (tmp == 1)
            {
                Response.Redirect("Shop.aspx");
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Your Email or Password is Invalid";
            }


        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}