using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services.Tickets;
using CrmApi.Data.Domain.Tickets;
using Microsoft.AspNetCore.Mvc;

namespace CrmApi.Controllers.Tickets
{
    [Route("api/[controller]")]
    public class ActionResultController : Controller
    {
        private readonly ActionResultService _actionResultService;

        public ActionResultController(ActionResultService actionResultService)
        {
            _actionResultService = actionResultService;
        }


        // GET: api/ ActionResult
        [HttpGet]
        public async Task<ActionResult<ResponseOk<IEnumerable<Data.Domain.Tickets.ActionResult>>>> GetAllTicketStates()
        {
            ResponseOk<IEnumerable<Data.Domain.Tickets.ActionResult>> response = new ResponseOk<IEnumerable<Data.Domain.Tickets.ActionResult>>
            {

                Data = await _actionResultService.GetAllActionResult()
            };

            return Ok(response);
        }


        // GET api/TicketState/5
        [HttpGet("{id}")]
        public async Task<Microsoft.AspNetCore.Mvc.ActionResult<ResponseOk<Data.Domain.Tickets.ActionResult>>> GetTicketStateById(int id)
        {
            ResponseOk<Data.Domain.Tickets.ActionResult> response = new ResponseOk<Data.Domain.Tickets.ActionResult>
            {
                Data = await _actionResultService.GetActionResult(id)
            };

            return Ok(response);
        }
    }
}
