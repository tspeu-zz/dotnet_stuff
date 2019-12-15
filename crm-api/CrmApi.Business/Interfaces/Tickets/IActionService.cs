using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using ActionT = CrmApi.Data.Domain.Tickets.Action;

namespace CrmApi.Business.Interfaces.Tickets
{
    public interface IActionService
    {
        // crear Acion
        Task<int> CreateTicketAction(ActionT action);
        Task<ActionT> AddTicketActionT(int idTicket, ActionT action);

        Task UpdateActionT(int id, ActionT action);

        Task<IEnumerable<ActionT>> GetAcctionsByTicket(int ticketId);
    }
}
