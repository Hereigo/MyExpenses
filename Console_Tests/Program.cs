using System;
using System.Data;
using System.Data.SQLite;

namespace Console_Tests
{
    class Program
    {
        static void Main(string[] args)
        {
            SQLiteConnection conn = new SQLiteConnection("Data Source=aaaSqlite.db; Version=3;");
            try
            {
                conn.Open();
                if (conn.State == ConnectionState.Open)
                {
                    SQLiteCommand cmd = conn.CreateCommand();
                    string tableName = "myExpenses";
                    string sql_command =
                        "DROP TABLE IF EXISTS " + tableName + ";"
                      + "CREATE TABLE " + tableName + "("
                      + "[id] integer PRIMARY KEY AUTOINCREMENT NOT NULL, "
                      + "[time] text(25) NOT NULL, "
                      + "[category] text(15) NOT NULL, "
                      + "[description] text(30) NOT NULL, "
                      + "[author] text(30) );"
                      + "INSERT INTO " + tableName + "(time, category, description, author) VALUES ("
                      + "'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.sss")
                      + "', 'Initialization', 'DB has been created.', 'xxx');";
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
                conn.Dispose();
            }
            catch (SQLiteException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
