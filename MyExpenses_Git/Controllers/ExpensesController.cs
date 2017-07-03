using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Net;
using System.Net.Http;
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
                using (SQLiteCommand fmd = conn.CreateCommand())
                {
                    fmd.CommandText = @"SELECT * FROM myExpenses";
                    fmd.CommandType = CommandType.Text;
                    SQLiteDataReader r = fmd.ExecuteReader();
                    while (r.Read())
                    {
                        var xpns = new Expense
                        {
                            id = r.GetInt32(r.GetOrdinal("id")),
                            Created = r.GetDateTime(r.GetOrdinal("time")),
                            Category = r.GetString(r.GetOrdinal("category")),
                            Description = r.GetString(r.GetOrdinal("description"))
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
        public void Post([FromBody]string value)
        {
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
