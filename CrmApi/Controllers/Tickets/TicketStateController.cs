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
    public class TicketStateController : Controller
    {

        private readonly TicketStateService _ticketStateService;

        public TicketStateController(TicketStateService ticketStateService)
        {
            _ticketStateService = ticketStateService;
        }

        // GET: api/TicketState
        [HttpGet]
        public async Task<ActionResult<ResponseOk<IEnumerable<TicketState>>>> GetAllTicketStates()
        {
            ResponseOk<IEnumerable<TicketState>> response = new ResponseOk<IEnumerable<TicketState>>
            {

                Data = await _ticketStateService.GetAllTicketStates()
            };

            return Ok(response);
        }


        // GET api/TicketState/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ResponseOk<TicketState>>> GetTicketStateById(int id)
        {
            ResponseOk<TicketState> response = new ResponseOk<TicketState>
            {
                Data = await _ticketStateService.GetTicketState(id)
            };

            return Ok(response);
        }

    }
}
