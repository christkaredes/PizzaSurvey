// Christ Karedes
// Assgn 5: Survey (ASP.NET)
// Submitted: 6/3/19

using Survey.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey
{
    public partial class ViewApplications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Takes data from DB...
            using (ShopContext context = new ShopContext())
            {
                List<Registration> registrations = context.Registrations.ToList();
                var query = context.Registrations.ToList();
                // ...and puts them into a table
                foreach (Registration r in registrations)
                {
                    litRegistrants.Text = litRegistrants.Text + 
                        $"<tr><td>{r.FirstName}</td>" +
                        $"<td>{r.LastName}</td>" +
                        $"<td>{r.PhoneNumber}</td>" +
                        $"<td>{r.Recommends}</td>" +
                        $"<td>{r.ToppingId}</td>" +
                        $"<td>{r.SizeId}</td>" +
                        $"<td>{r.RatingId}</td>" +
                        $"<td>{r.Why}</td></tr>";
                }
            }
        }
    }
}