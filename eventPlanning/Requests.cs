using System;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace eventPlanning
{
    public static class Requests
    {
        public static string Request(string request)
        {
            string errorMessage = "";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BD.mdf;Integrated Security=True");

            try
            {                
                con.Open();
                SqlCommand com = new SqlCommand(request, con);
                com.ExecuteNonQuery();                
            }
            catch (Exception ex)
            {
                errorMessage = ex.ToString();
            }
            finally
            {
                con.Close();
            }

            return errorMessage;
        }

        public static string GetValue(string request)
        {
            string value = "0";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BD.mdf;Integrated Security=True");

            try
            {
                con.Open();
                SqlCommand com = new SqlCommand(request, con);
                value = com.ExecuteScalar().ToString();
            }
            catch
            {
                value = "0";
            }
            finally
            {
                con.Close();
            }

            if (value == "")
            {
                value = "0";
            }

            return value;
        }

        public static bool CheckDuplicate(string request, string field1)
        {
            bool flag = true;
            string field2 = "";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\BD.mdf;Integrated Security=True");

            try
            {
                con.Open();
                SqlCommand com = new SqlCommand(request, con);
                field2 = com.ExecuteScalar().ToString();                
            }
            catch
            {
                flag = false;
            }
            finally
            {
                con.Close();
            }

            if (field1 == field2 && field2 != "")
            {
                flag = true;
            }
            else
            {
                flag = false;
            }

            return flag;
        }

        public static bool CheckFields(string [] valueOfFields)
        {
            bool flag = true;

            for (byte i = 0; i < valueOfFields.Length; i++)
            {
                if (valueOfFields[i] == "")
                {
                    flag = false;
                    break;
                }
            }

            return flag;
        }
    }
}