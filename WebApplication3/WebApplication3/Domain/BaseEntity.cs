using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication3.Domain
{
    public class BaseEntity
    {
        [Required]
        public int Id { get; set; }

        public DateTime CreationDate { get; set; }

        public DateTime Modification { get; set; }

        public bool IsDelete { get; set; }
    }
}
