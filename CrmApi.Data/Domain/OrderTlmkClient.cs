using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.Domain
{
    public class OrderTlmkClient : BaseEntity
    {
        [Key]
        public int NumOrder { get; set; }
        //[ForeignKey("CustomerForeignKey")]
        [Key]
        public int CustomerId { get; set; }

        public Customer Customer { get; set; }
    }
}
