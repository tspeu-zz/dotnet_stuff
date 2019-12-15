using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Business.Interfaces.Tickets
{
    public interface ITicketTypeService
    {

        Task<IEnumerable<TicketType>> GetAllTicketTypes();

        Task<TicketType> GetTicketType(int id);
    }
}
