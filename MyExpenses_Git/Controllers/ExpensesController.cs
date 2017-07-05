using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using Web_API.Models;

namespace MyExpenses_Git.Controllers
{
    public class ExpensesController : ApiController
    {
        // GET: api/Expenses
        public IEnumerable<Expense> Get()
        {
            return SqliteUse.RetrieveFromDb().ToArray();
        }

        // GET: api/Expenses/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Expenses
        // public IHttpActionResult Post([FromBody]object expenseData)  //!!!!!!
		public void Post([FromBody]object expenseData)  //!!!!!!
        {
            Expense result = JsonConvert.DeserializeObject<Expense>(expenseData.ToString());
            SqliteUse.InsertIntoDb(result);
            // return Redirect(new System.Uri("http://localhost:2398/api/Expenses/2"));
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
