using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces.Tickets;
using Microsoft.EntityFrameworkCore;
using Task = System.Threading.Tasks.Task;

namespace CrmApi.Data.Repositories.Tickets
{
    public class TicketRepository : Repository<Ticket>, ITicketRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public TicketRepository(CrmApiContext context) : base(context) { }


        public async Task<IEnumerable<Ticket>> GetTicketsByUser(int id) {

            var Tickets = await Context.Set<Ticket>().Where(t => t.UserId == id).ToListAsync();
            
            return Tickets;
        }

        public Task DeleteTicket(Ticket ticket)
        {
            ticket.IsDeleted = true;
            ticket.ModificationDate = DateTime.Now;
           
            Update(ticket);
            return Task.CompletedTask;
        }
    }
}
