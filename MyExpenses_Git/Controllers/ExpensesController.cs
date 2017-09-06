using MyExpenses_Git.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Web.Http;
using Web_API.Models;

namespace MyExpenses_Git.Controllers
{
    [Authorize]
    public class ExpensesController : ApiController
    {
        // GET: api/LastTwoDays
        //public string LastTwoDays() // IEnumerable<Expense> LastTwoDays()
        //{
        //    // TODO:
        //    // Implement right!
        //    return "LastTwoDaysResult!"; // SqliteUse.RetrieveAllXpensesFromDb().ToArray(); // - NOT ALL !!!
        //}

        public CategoriesCollect Get()
        {
            return SqliteUse.GetCategoriesCollection();
        }

        // GET: api/Expenses/5 = Review of last 5 days
        public string Get(int id)
        {
            int howMuchDays = id;

            return "value";
        }

        // POST: api/Expenses
        public void Post([FromBody]object expenseData)
        // public IHttpActionResult Post([FromBody]object expenseData)  // TODO: Implement.!!!!!!
        {
            Expense result = JsonConvert.DeserializeObject<Expense>(expenseData.ToString());

            // TEMPORARY !!!!!!!!
            // TEMPORARY !!!!!!!!
            // TEMPORARY !!!!!!!!
            result.Author = "andruxa";
            // TEMPORARY !!!!!!!!
            // TEMPORARY !!!!!!!!
            // TEMPORARY !!!!!!!!

            if (result.Author.Trim().ToLower() == "andruxa" && result.Description.Trim().Length > 2)
            {
                SqliteUse.InsertIntoDb(result);
            }
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
