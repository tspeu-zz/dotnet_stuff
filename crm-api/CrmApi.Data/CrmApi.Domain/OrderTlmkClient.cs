using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.CrmApi.Domain
{
    public class OrderTlmkClient : BaseEntity
    {
        [Key]
        public int NumOrder { get; set; }

        //[ForeignKey("CustomerForeignKey")]
        [Key]
        public int CustomerId { get; set; }
    }
}
