using System;
using System.ComponentModel.DataAnnotations;

namespace CrmApi.Data.CrmApi.Domain
{
    public class Customer : BaseEntity
    {
        [Required]
        [StringLength(120)]
        public string Email { get; set; }
    }
}
