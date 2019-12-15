using System;
namespace CrmApi.DTOs.Customer
{
    public class InterestedCourse
    {
        public int? Id { get; set; }
        public int CustomerId { get; set; }
        public int CourseId { get; set; }
        public DateTime LastDate { get; set; }
    }
}
