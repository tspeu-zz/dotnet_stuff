using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.Domain
{
    public class InterestedCourse : BaseEntity
    {
        [Key]
        public int CustomerId { get; set; }
        [Key]
        public int CourseId { get; set; }
        public DateTime LastDate { get; set; }

        // FIXME
        public Customer Customer { get; set; }
    }
}
