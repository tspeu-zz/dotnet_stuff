using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Business.Interfaces.Tickets
{
    public interface ITicketSSeervice
    {
        Task<IEnumerable<TicketState>> GetAllTicketStates();

        Task<TicketState> GetTicketState(int id);
    }
}
