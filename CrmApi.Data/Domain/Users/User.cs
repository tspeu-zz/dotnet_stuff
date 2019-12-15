using System;
using System.Collections.Generic;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Data.Domain.Users
{
    public class User: BaseEntityTicket
    {

        public string FirstName { get; set; }
        
        public string LastName { get; set; }

        public string UserPrincipalName { get; set; }

        public string Phone { get; set; }

        public int CountryId { get; set; }

        public string JobTittle { get; set; }

        public bool IsWorking { get; set; }

        public DateTime BirthDay { get; set; }

        public bool IsActive { get; set; }

        public int ActiveDirectoryId { get; set; }

        //
        //public List<Ticket> TicketsList { get; set; }
        //public Ticket Ticket { get; set; }
    }
}
