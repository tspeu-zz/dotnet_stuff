using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.CrmApi.Domain
{
    public class CustomerData : BaseEntity
    {
        //[ForeignKey("CustomerForeignKey")]
        public int CustomerId { get; set; }

        [Required]
        [StringLength(250)]
        public string Name { get; set; }

        [Required]
        [StringLength(400)]
        public string SurName { get; set; }
 
        [StringLength(20)]
        public string Phone { get; set; }

        [StringLength(20)]
        public string Phone2 { get; set; }

        public string Country { get; set; }

        public string DNI { get; set; }

        // preguntar ?¿
        public string EMAIL { get; set; }

        public bool IsDataValidated { get; set; }
    }
}
