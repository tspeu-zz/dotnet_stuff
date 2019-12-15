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
    public class TicketTypeController : Controller
    {
        private readonly TicketTypeService _ticketTypeService;

        public TicketTypeController(TicketTypeService ticketTypeService)
        {
            _ticketTypeService = ticketTypeService;
        }

        // GET: api/TicketType
        [HttpGet]
        public async Task<ActionResult<ResponseOk<IEnumerable<TicketType>>>> GetAllTicketType()
        {
            ResponseOk<IEnumerable<TicketType>> response = new ResponseOk<IEnumerable<TicketType>>
            {

                Data = await _ticketTypeService.GetAllTicketTypes()
            };

            return Ok(response);
        }


        // GET api/TicketType/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ResponseOk<TicketType>>> GetTicketTypeId(int id)
        {
            ResponseOk<TicketType> response = new ResponseOk<TicketType>
            {
                Data = await _ticketTypeService.GetTicketType(id)
            };

            return Ok(response);
        }

    }
}
