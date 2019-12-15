using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces;
using Task = System.Threading.Tasks.Task;

namespace CrmApi.Data.Repositories.Interfaces.Tickets
{
    public interface ITicketRepository : IRepository<Ticket>
    {
        Task<IEnumerable<Ticket>> GetTicketsByUser(int id);
 
        Task DeleteTicket( Ticket ticket);
    }
}
