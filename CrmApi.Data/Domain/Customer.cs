using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Data.Domain
{
    public class Customer : BaseEntity
    {
        [Required]
        [StringLength(120)]
        public string Email { get; set; }

        [StringLength(250)]
        public string Name { get; set; }

        [StringLength(400)]
        public string SurName { get; set; }

        [StringLength(20)]
        public string Phone { get; set; }

        [StringLength(20)]
        public string Phone2 { get; set; }

        public string Country { get; set; }

        public string DNI { get; set; }

        public bool IsDataValidated { get; set; }

        // permitir mas de un comentario por Customer
        public List<CustomerComment> CustomerCommentList { get; set; }
        // varios cursos por Customer
        public List<InterestedCourse> InterestedCourseList { get; set; }
        // varias ordenes por Customer
        public List<OrderTlmkClient> OrderTlmkClientList { get; set; }

    }
}
