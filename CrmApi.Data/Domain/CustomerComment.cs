using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.Domain
{
    public class CustomerComment : BaseEntity
    {
        //[ForeignKey("CustomerForeignKey")]
       
        public int CustomerId { get; set; }
       
        [Required]
        public string Comment { get; set; }

        public Customer Customer { get; set; }

        //public DateTime Date { get; set; }

    }
}
