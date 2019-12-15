using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services.Tickets;
using Microsoft.AspNetCore.Mvc;
using ActionT = CrmApi.Data.Domain.Tickets.Action;

namespace CrmApi.Controllers.Tickets
{
    [Route("api/[controller]")]
    public class ActionController : Controller
    {
        ActionService _actionService;

        public ActionController(ActionService actionService)
        {
            _actionService = actionService;
        }

        // POST api/action
        [HttpPost("{idTicket}")]
        public async Task<IActionResult> AddTask(int idTicket, [FromBody]ActionT actionT)
        {
            try
            {
                if (actionT != null)
                {

                    var taskDb = await _actionService.AddTicketActionT(idTicket, actionT);

                    return Ok(taskDb);
                }

                return BadRequest();

            }
            catch (Exception e)
            {

                throw new Exception(e.ToString());
            }
        }

        // GET api/action/5   | @param Id => idTicket @return List<ActionT>
        [HttpGet("{idTicket}")]
                 
        public async Task<ActionResult<ResponseOk<IEnumerable<ActionT>>>> GetAcionsByTicket(int idTicket)
        {
            ResponseOk<IEnumerable<ActionT>> response = new ResponseOk<IEnumerable<ActionT>>
            {
                Data = await _actionService.GetAcctionsByTicket(idTicket)
            };
     
            return Ok(response);
        }

    }
}
