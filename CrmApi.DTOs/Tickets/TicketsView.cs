using System;
using CrmApi.Data.Domain;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Domain.Users;

namespace CrmApi.DTOs.Tickets
{
    public class TicketsView
    {
        public Ticket Ticket { get; set; }
        public Customer Customer { get; set; }
        public TicketState TicketState { get; set; }
        public User User { get; set; }
    }
}
