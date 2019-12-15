using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;
using CrmApi.DTOs.Tickets;

namespace CrmApi.Business.Interfaces.Tickets
{
    public interface IActionResultService
    {
        Task<IEnumerable<ActionResult>> GetAllActionResult();

        Task<ActionResult> GetActionResult(int id);
    }
}