using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows;
using CTMS_Clone.Server.cms.Conn;

namespace CTMS_Clone.Server.cms.Func
{
    public class Functions
    {
        public static DataTable getDataToTable(SqlCommand cmd)
        {
            DataTable table = new DataTable();
            using (SqlConnection conn = SQLDatabase.getConnection())
            {
                try
                {
                    conn.Open();
                    cmd.Connection = conn;
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(table);
                } catch (Exception ex)
                {
                    Console.WriteLine(ex);
                } finally
                {
                    conn.Close();
                }
            }
            return table;
        }

        public static DataSet getData_OverDataSet(SqlCommand cmd)
        {
            DataSet ds = new DataSet();
            if (cmd.Connection != null)
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    adapter.Fill(ds);
                }
            } else
            {
                using (SqlConnection conn = SQLDatabase.getConnection())
                {
                    try
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            adapter.Fill(ds);
                        }
                    } catch (Exception ex)
                    {
                        Console.WriteLine(ex);
                    } finally
                    {
                        conn.Open();
                    }
                }
            }
            return ds;
        }

        public static void executeNonQuery(SqlCommand cmd)
        {
            if (cmd.Connection != null)
            {
                cmd.ExecuteNonQuery();
            } else
            {
                using (SqlConnection conn = SQLDatabase.getConnection())
                {
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static bool checkKey(string sql)
        {
            using (SqlConnection conn = SQLDatabase.getConnection()) // Phải kết nối tới CSDL
            {
                conn.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(sql, conn))
                {
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    if (table.Rows.Count > 0)
                    {
                        return true;
                    } else
                    {
                        return false;
                    }
                }
            }
        }

        public static string getFieldValues(string sql)
        {
            string ma = "";
            using (SqlConnection conn = SQLDatabase.getConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ma = reader.GetValue(0).ToString();
                }
                reader.Close();
            }
            return ma;
        }
    }
}