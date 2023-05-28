using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace TryFinal
{
    public static class DataAccess
    {
        private static string GamingConnectionString;

        static DataAccess()
        {
            GamingConnectionString = WebConfigurationManager.ConnectionStrings["GamingConnectionString"].ConnectionString;

        }

        public static DataTable selectQuery(string query)
        { 
            DataTable dt = new DataTable();
            SqlConnection con =new SqlConnection(GamingConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            dt.Load(cmd.ExecuteReader());
            con.Close();
            return dt;
        }



    }
}