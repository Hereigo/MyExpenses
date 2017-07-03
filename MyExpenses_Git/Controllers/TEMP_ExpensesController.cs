using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Web;
using System.Web.Http;
// using Web_API.Models;

namespace Expenses_WebApi_Sqlite.Controllers________________________________
{
    public class ExpensesController : ApiController
    {
        private List<string> GetAllExpenses()
        {
            List<string> xpenses = new List<string>();

            string dbPath = HttpContext.Current.Server.MapPath(@"~\App_Data\aaaSqlite.db");

            using (SQLiteConnection conn = new SQLiteConnection("Data Source=" + dbPath + "; Version=3;"))
            {
                conn.Open();
                using (SQLiteCommand fmd = conn.CreateCommand())
                {
                    fmd.CommandText = @"SELECT (category) FROM myExpenses";
                    fmd.CommandType = CommandType.Text;
                    SQLiteDataReader r = fmd.ExecuteReader();
                    while (r.Read())
                    {
                        xpenses.Add(Convert.ToString(r["category"]));
                    }
                }
            }
            return xpenses;
        }

        // GET: api/Expenses
        public IEnumerable<string> Get()
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
