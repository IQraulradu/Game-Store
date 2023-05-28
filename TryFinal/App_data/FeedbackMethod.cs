using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TryFinal
{
    public class FeedbackMethod
    {
        SqlFeedback hp = new SqlFeedback();
        FedbackDB bll = new FedbackDB();

        public void Insert(FedbackDB bl)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection=hp.GetConnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertFeedbackData";
            cmd.Parameters.AddWithValue("@name", bl.Name);
            cmd.Parameters.AddWithValue("@email", bl.Email);
            cmd.Parameters.AddWithValue("@subject", bl.Subject);
            cmd.Parameters.AddWithValue("@Message", bl.Message);
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }

    }
}