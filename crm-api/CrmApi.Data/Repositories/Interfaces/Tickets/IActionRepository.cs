using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;
using Action = CrmApi.Data.Domain.Tickets.Action;

namespace CrmApi.Data.Repositories.Interfaces.Tickets
{
    public interface IActionRepository: IRepository<Action>
    {

        Task<IEnumerable<Action>> GetActionsByTickets(int id);
    }
}
