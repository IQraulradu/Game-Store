using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TryFinal
{
    public class SqlFeedback
    {
        public SqlConnection GetConnection() 
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-R8FJKCP\\SQLEXPRESS;Initial Catalog=gaming;Integrated Security=True");
            con.Open();
            return con;
        }
    }
}