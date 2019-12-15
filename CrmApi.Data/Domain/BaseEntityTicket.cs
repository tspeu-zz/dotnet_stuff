using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.Domain
{
    public class BaseEntityTicket
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int? Id { get; set; }

        [Required]
        public DateTime CreationDate { get; set; } = DateTime.Now;


        public DateTime ModificationDate { get; set; } = DateTime.Now;


        //[Required]
        public bool IsDeleted { get; set; } = false;

        public BaseEntityTicket()
        {
        }
    }
}
