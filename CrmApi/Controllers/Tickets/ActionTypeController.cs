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
    public class ActionTypeController : Controller
    {

        private readonly ActionTypeService _actionTypeService;

        public ActionTypeController(ActionTypeService actionTypeService)
        {
            _actionTypeService = actionTypeService;
        }


        // GET: api/ActionType
        [HttpGet]
        public async Task<ActionResult<ResponseOk<IEnumerable<ActionType>>>> GetAllTicketStates()
        {
            ResponseOk<IEnumerable<ActionType>> response = new ResponseOk<IEnumerable<ActionType>>
            {

                Data = await _actionTypeService.GetAllActionType()
            };

            return Ok(response);
        }


        // GET api/ActionType/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ResponseOk<ActionType>>> GetTicketStateById(int id)
        {
            ResponseOk<ActionType> response = new ResponseOk<ActionType>
            {
                Data = await _actionTypeService.GetActionType(id)
            };

            return Ok(response);
        }


    }
}
