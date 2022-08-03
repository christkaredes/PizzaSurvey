// Christ Karedes
// Assgn 5: Survey (ASP.NET)
// Submitted: 6/3/19

using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Survey.Models
{
    public class ShopContext : DbContext
    {
        // Reads connection string to read the DB
        public ShopContext() : base("name=myconn")
        {
            Database.SetInitializer<ShopContext>(new DropCreateDatabaseIfModelChanges<ShopContext>());
        }
        // Maps content to the framework
        public virtual DbSet<Registration> Registrations { get; set; }
    }
}