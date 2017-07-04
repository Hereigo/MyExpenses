using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using Web_API.Models;

namespace MyExpenses_Git.Controllers
{
    public class ExpensesController : ApiController
    {
        private List<Expense> GetAllExpenses()
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

        // GET: api/Expenses
        public IEnumerable<Expense> Get()
        {
            return GetAllExpenses().ToArray();
            //return new string[] { "value1", "value2" };
        }

        // GET: api/Expenses/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Expenses
        //public void Post([FromBody]object expenseData)
        // TODO :
        public IHttpActionResult Post([FromBody]object expenseData)  //!!!!!!
        {
            Expense result = JsonConvert.DeserializeObject<Expense>(expenseData.ToString());
            InsertIntoDb(result);

            return Redirect(new System.Uri("http://localhost:2398/api/Expenses"));
        }

        private void InsertIntoDb(Expense expense)
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

        // PUT: api/Expenses/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Expenses/5
        public void Delete(int id)
        {
        }
    }
}
