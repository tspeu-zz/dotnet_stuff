using System;
using System.Collections.Generic;

namespace CrmApi.DTOs.CustomerDTO
{
    public class CustomerDto
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public DateTime CreationDate { get; set; }
        public DateTime ModificationDate { get; set; }
        public bool IsDeleted { get; set; }

        public List<CustomerCommentDto> CustomerCommentList { get; set; }
        public List<InterestedCourseDto> InterestedCourseList { get; set; }
        public List<OrderTlmkClientDto> OrderTlmkClientList { get; set; }

        public CustomerDto()
        {
            CustomerCommentList = new List<CustomerCommentDto>();
            InterestedCourseList = new List<InterestedCourseDto>();
            OrderTlmkClientList = new List<OrderTlmkClientDto>();
        }

        
    }
}
