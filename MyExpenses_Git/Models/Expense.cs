using System;

namespace Web_API.Models
{
    public class Expense
    {
        public int id { get; set; }
        public DateTime Created { get; set; }
        public string Category { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
    }

    public enum Category
    {
        Alf,
        Prv,
        Bkp,
        Wok,
        Hom,
        Kid,
        Kiu,
        Kiv,
        Qvn,
        Foo,
        Cof,
        Enj,
        Peb,
        Hls,
        Clo,
        Vih,
        Vlg,
        Frd,
        Ksh,
        Cex
    }
}