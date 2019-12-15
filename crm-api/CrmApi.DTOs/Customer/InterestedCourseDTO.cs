using System;
namespace CrmApi.DTOs.CustomerDTO
{
    public class InterestedCourseDto
    {
        public int? Id { get; set; }
        public int CustomerId { get; set; }
        public int CourseId { get; set; }
        public DateTime LastDate { get; set; }
    }
}
