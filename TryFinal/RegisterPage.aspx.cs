using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryFinal
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\CURS PROGRAMARE\\Proiect final CURS\\TryFinal\\TryFinal\\App_data\\Register.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {

            if (nametxt.Text != "" && emailtxt.Text != "" && passwordtxt.Text != "")
            {
                string ins = "Insert into [Table](Name, Email_id, Password) values(@Name, @Email, @Password)";
                SqlCommand com = new SqlCommand(ins, con);
                com.Parameters.AddWithValue("@Name", nametxt.Text);
                com.Parameters.AddWithValue("@Email", emailtxt.Text);
                com.Parameters.AddWithValue("@Password", passwordtxt.Text);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");

            }
            else
            {
                Label5.ForeColor = System.Drawing.Color.Red;
                Label5.Text = "All fields are recommended or the email already exists ";
            }

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}