using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Business.Interfaces.Tickets
{
    public interface IActionTypeService
    {
        Task<IEnumerable<ActionType>> GetAllActionType();

        Task<ActionType> GetActionType(int id);
    }
}
