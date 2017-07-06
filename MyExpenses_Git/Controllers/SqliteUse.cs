using MyExpenses_Git.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using Web_API.Models;

namespace MyExpenses_Git
{
    public static class SqliteUse
    {
        public static List<Expense> RetrieveAllXpensesFromDb()
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
                            Author = rdr.GetString(rdr.GetOrdinal("author"))
                        };
                        xpenses.Add(xpns);
                    }
                }
            }
            return xpenses;
        }

        public static CategoriesCollect GetCategoriesCollection()
        {
            List<Expense> allExpenses = RetrieveAllXpensesFromDb();

            string modif = allExpenses.Select(x => x.Created).Max().ToString("dd__HH:mm:ss");

            int sumPro = allExpenses.Where(x => x.Category.ToUpper() == "PRO").Select(x => x.Amount).Sum();
            int sumMoo = allExpenses.Where(x => x.Category.ToUpper() == "MOO").Select(x => x.Amount).Sum();

            int sumAlf = allExpenses.Where(x => x.Category.ToUpper() == "ALF").Select(x => x.Amount).Sum();
            int sumPrv = allExpenses.Where(x => x.Category.ToUpper() == "PRV").Select(x => x.Amount).Sum();
            int sumBkp = allExpenses.Where(x => x.Category.ToUpper() == "BKP").Select(x => x.Amount).Sum();
            int sumCex = allExpenses.Where(x => x.Category.ToUpper() == "CEX").Select(x => x.Amount).Sum();

            int sumClo = allExpenses.Where(x => x.Category.ToUpper() == "CLO").Select(x => x.Amount).Sum();
            int sumCof = allExpenses.Where(x => x.Category.ToUpper() == "COF").Select(x => x.Amount).Sum();
            int sumEnj = allExpenses.Where(x => x.Category.ToUpper() == "ENJ").Select(x => x.Amount).Sum();
            int sumFoo = allExpenses.Where(x => x.Category.ToUpper() == "FOO").Select(x => x.Amount).Sum();
            int sumFrd = allExpenses.Where(x => x.Category.ToUpper() == "FRD").Select(x => x.Amount).Sum();
            int sumHls = allExpenses.Where(x => x.Category.ToUpper() == "HLS").Select(x => x.Amount).Sum();
            int sumHom = allExpenses.Where(x => x.Category.ToUpper() == "HOM").Select(x => x.Amount).Sum();
            int sumKid = allExpenses.Where(x => x.Category.ToUpper() == "KID").Select(x => x.Amount).Sum();
            int sumKiu = allExpenses.Where(x => x.Category.ToUpper() == "KIU").Select(x => x.Amount).Sum();
            int sumKiv = allExpenses.Where(x => x.Category.ToUpper() == "KIV").Select(x => x.Amount).Sum();
            int sumKsh = allExpenses.Where(x => x.Category.ToUpper() == "KSH").Select(x => x.Amount).Sum();
            int sumPeb = allExpenses.Where(x => x.Category.ToUpper() == "PEB").Select(x => x.Amount).Sum();
            int sumQvn = allExpenses.Where(x => x.Category.ToUpper() == "QVN").Select(x => x.Amount).Sum();
            int sumVih = allExpenses.Where(x => x.Category.ToUpper() == "VIH").Select(x => x.Amount).Sum();
            int sumVlg = allExpenses.Where(x => x.Category.ToUpper() == "VLG").Select(x => x.Amount).Sum();
            int sumWok = allExpenses.Where(x => x.Category.ToUpper() == "WOK").Select(x => x.Amount).Sum();

            int sumXXX = (sumPro + sumMoo) - (sumAlf + sumPrv + sumBkp + sumCex + sumClo + sumCof + sumEnj + sumFoo + sumFrd
                + sumHls + sumHom + sumKid + sumKiu + sumKiv + sumKsh + sumPeb + sumQvn + sumVih + sumVlg + sumWok);

            return new CategoriesCollect
            {
                Pro = sumPro,
                Alf = sumAlf,
                Prv = sumPrv,
                Bkp = sumBkp,
                Cex = sumCex,
                Clo = sumClo,
                Cof = sumCof,
                Enj = sumEnj,
                Foo = sumFoo,
                Frd = sumFrd,
                Hls = sumHls,
                Hom = sumHom,
                Kid = sumKid,
                Kiu = sumKiu,
                Kiv = sumKiv,
                Ksh = sumKsh,
                Moo = sumMoo,
                Peb = sumPeb,
                Qvn = sumQvn,
                Vih = sumVih,
                Vlg = sumVlg,
                Wok = sumWok,
                Modif = modif,
                XXX = sumXXX
            };
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
                        "INSERT INTO myExpenses (time, category, description, amount, author) VALUES ("
                      + "'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.sss")
                      + "', '" + expense.Category + "', '" + expense.Description + "', '"
                      + expense.Amount + "', '" + expense.Author + "');";
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