using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.CrmApi.Domain
{
    public class CustomerComment : BaseEntity
    {
        //[ForeignKey("CustomerForeignKey")]
       
        public int CustomerId { get; set; }

        [Required]
        public string Comment { get; set; }

        public DateTime Date { get; set; }


    }
}
