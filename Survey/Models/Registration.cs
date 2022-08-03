// Christ Karedes
// Assgn 5: Survey (ASP.NET)
// Submitted: 6/3/19

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Survey.Models
{
    public class Registration
    {
        // Data to be stored in the DB
        [Key]
        public int Id { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string PhoneNumber { get; set; }
        public bool Recommends { get; set; }
        public int ToppingId { get; set; }
        public int SizeId { get; set; }
        public int RatingId { get; set; }
        [Required]
        public string Why { get; set; }
    }
}