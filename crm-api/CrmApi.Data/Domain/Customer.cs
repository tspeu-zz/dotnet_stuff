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

        // permitir mas de un comentario por Customer
        public List<CustomerComment> CustomerCommentList { get; set; }

        // varios cursos por Customer
        public List<InterestedCourse> InterestedCourseList { get; set; }

        internal void Map(Customer customer)
        {
            throw new NotImplementedException();
        }

        // varias ordenes por Customer
        public List<OrderTlmkClient> OrderTlmkClientList { get; set; }

        public static implicit operator Customer(List<Customer> v)
        {
            throw new NotImplementedException();
        }

        public static explicit operator Customer(Task<Customer> v)
        {
            throw new NotImplementedException();
        }

        // varios tickets
        //public List<Ticket> TicketsList { get; set; }



    }
}
