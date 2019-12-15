using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.CrmApi.Domain
{
    public class BaseEntity
    {

        [Key]
	    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int? Id  {get; set; }

        [Required]
        public DateTime CreationDate {get; set; }

        //[Required]
        //public DateTime ModificationDate {get; set; }


        //[Required]
        //public bool IsDeleted {get; set; }



        public BaseEntity()
        {
        }
    }
}
