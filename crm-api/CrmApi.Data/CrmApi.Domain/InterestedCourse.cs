using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.CrmApi.Domain
{
    public class InterestedCourse : BaseEntity
    {
        //[ForeignKey("CustomerForeignKey")]
        [Key]
        public int CustomerId { get; set; }

        //ForeignKey("CourseForeignKey")]
        [Key]
        public int CourseId { get; set; }

        public DateTime LastDate { get; set; }
    }
}
