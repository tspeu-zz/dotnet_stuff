using System;
using System.Collections.Generic;
using System.Threading.Tasks;

using TaskT = CrmApi.Data.Domain.Tickets.Task;

namespace CrmApi.Data.Repositories.Interfaces.Tickets
{
    public interface ITaskRepository : IRepository<TaskT>
    {

        Task<IEnumerable<TaskT>> GetTasksByTickets(int idTicket);
    }
}
