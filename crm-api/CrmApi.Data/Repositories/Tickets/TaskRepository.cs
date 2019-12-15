using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using TaskT = CrmApi.Data.Domain.Tickets.Task;
using CrmApi.Data.Repositories.Interfaces.Tickets;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace CrmApi.Data.Repositories.Tickets
{
    public class TaskRepository: Repository<TaskT>, ITaskRepository
    {
         
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public TaskRepository(CrmApiContext context) : base(context) { }


        public  async Task<IEnumerable<TaskT>> GetTasksByTickets(int idTicket)
        {
            var tasks = await Context.Set<TaskT>().AsNoTracking().Where(a => a.TicketId == idTicket).ToListAsync();

            return tasks;
        }
    
    }
}
