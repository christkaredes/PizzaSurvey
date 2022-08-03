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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Opens connection SQL server, interacts with DB, then closes
                using (ShopContext context = new ShopContext())
                {
                    Registration registration = new Registration();
                    registration.FirstName = txtFirstName.Text;
                    registration.LastName = txtLastName.Text;
                    registration.PhoneNumber = txtPhoneNumber.Text;
                    registration.Recommends = chkRecommend.Checked;
                    registration.ToppingId = int.Parse(drpTopping.SelectedValue);
                    registration.SizeId = int.Parse(drpSize.SelectedValue);
                    registration.RatingId = int.Parse(drpRating.SelectedValue);
                    registration.Why = txtWhy.Text;
                    context.Registrations.Add(registration);
                    context.SaveChanges();
                }

                // Summarizes user's answers
                pnlForm.Visible = false;
                pnlConfirm.Visible = true;
                lblFirstNameResults.Text = txtFirstName.Text;
                lblLastNameResults.Text = txtLastName.Text;
                lblPhoneNumberResults.Text = txtPhoneNumber.Text;
                lblToppingResults.Text = drpTopping.SelectedItem.Text;
                lblSizeResults.Text = drpSize.SelectedItem.Text;
                lblRatingResults.Text = drpRating.SelectedItem.Text;
                lblWhyResults.Text = txtWhy.Text;

                if (chkRecommend.Checked)
                {
                    lblRecommendResults.Text = "Yes";
                }
                else
                {
                    lblRecommendResults.Text = "No";
                }
            }
        }
    }
}