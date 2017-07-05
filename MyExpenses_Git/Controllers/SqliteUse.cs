using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SQLite;
using Web_API.Models;

namespace MyExpenses_Git
{
    public static class SqliteUse
    {
        public static List<Expense> RetrieveFromDb()
        {
            List<Expense> xpenses = new List<Expense>();

            string dbPath = HttpContext.Current.Server.MapPath(@"~\App_Data\aaaSqlite.db");

            using (SQLiteConnection conn = new SQLiteConnection("Data Source=" + dbPath + "; Version=3;"))
            {
                conn.Open();
                using (SQLiteCommand cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"SELECT * FROM myExpenses";
                    cmd.CommandType = CommandType.Text;
                    SQLiteDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        var xpns = new Expense
                        {
                            id = rdr.GetInt32(rdr.GetOrdinal("id")),
                            Created = rdr.GetDateTime(rdr.GetOrdinal("time")),
                            Category = rdr.GetString(rdr.GetOrdinal("category")),
                            Description = rdr.GetString(rdr.GetOrdinal("description")),
                            Amount = rdr.GetInt32(rdr.GetOrdinal("amount")),
                            isProfit = rdr.GetInt32(rdr.GetOrdinal("isProfit")),
                            Author = rdr.GetString(rdr.GetOrdinal("author"))
                        };
                        xpenses.Add(xpns);
                    }
                }
            }
            return xpenses;
        }

        public static void InsertIntoDb(Expense expense)
        {
            string dbPath = HttpContext.Current.Server.MapPath(@"~\App_Data\aaaSqlite.db");

            using (SQLiteConnection conn = new SQLiteConnection("Data Source=" + dbPath + "; Version=3;"))
            {
                conn.Open();
                if (conn.State == ConnectionState.Open)
                {
                    SQLiteCommand cmd = conn.CreateCommand();
                    string sql_command =
                        "INSERT INTO myExpenses (time, category, description, amount, isProfit, author) VALUES ("
                      + "'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.sss")
                      + "', '" + expense.Category + "', '" + expense.Description + "', '"
                      + expense.Amount + "', '" + expense.isProfit + "', '" + expense.Author + "');";
                    cmd.CommandText = sql_command;
                    try
                    {
                        cmd.ExecuteNonQuery();
                    }
                    catch (SQLiteException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                }
            }
        }
    }
}