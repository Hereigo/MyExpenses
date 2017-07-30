using MyExpenses_Git.Models;
using Newtonsoft.Json;
using System.Web.Http;
using Web_API.Models;

namespace MyExpenses_Git.Controllers
{
    public class ExpensesController : ApiController
    {
        // GET: api/Expenses
        //public IEnumerable<Expense> Get()
        //{
        //    return SqliteUse.RetrieveAllXpensesFromDb().ToArray();
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
        // public IHttpActionResult Post([FromBody]object expenseData)  //!!!!!!
        {
            Expense result = JsonConvert.DeserializeObject<Expense>(expenseData.ToString());

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
