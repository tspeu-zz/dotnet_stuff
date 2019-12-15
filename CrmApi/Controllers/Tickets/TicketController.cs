using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services.Tickets;
using CrmApi.Data.Domain.Tickets;
using CrmApi.DTOs;
using CrmApi.DTOs.Tickets;
using Microsoft.AspNetCore.Mvc;
using ActionT = CrmApi.Data.Domain.Tickets.Action;


namespace CrmApi.Controllers.Tickets
{

    [Route("api/[controller]")]
    public class TicketController : Controller
    {
        private readonly TicketService _ticketService;
        private readonly ActionService _actionService;

        public TicketController(TicketService ticketService,
                                ActionService actionService)
        {
            _ticketService = ticketService;
            _actionService = actionService;

        }


        // GET: api/ticket  |  => List<TicketsView>
        [HttpGet]
        public async Task<ActionResult<ResponseOk<IEnumerable<TicketsView>>>> GetAllTickets()
        {
            ResponseOk<IEnumerable<TicketsView>> response = new ResponseOk<IEnumerable<TicketsView>>
            {
                Data = await _ticketService.GetAllTickets()
            };

            return Ok(response);
        }

        
        // GET api/ticket/user/5   | @param userId => List<Ticket>
        [HttpGet("user/{idUser}")]
        public async Task<ActionResult<ResponseOk<IEnumerable<Ticket>>>> GetAllTicketsByUser(int idUser)
        {
            ResponseOk<IEnumerable<Ticket>> response = new ResponseOk<IEnumerable<Ticket>>
            {
                Data = await _ticketService.GetAllTicketsByUser(idUser)
            };
            //TODO add list actions | task

            var tempList = _ticketService.FechtActionToListTickets(response.Data);

            response.Data = tempList;

            return Ok(response);
        }

        // GET api/ticket/5   | @param Id => Ticket
        [HttpGet("{id}")]
        public async Task<ActionResult<ResponseOk<Ticket>>> GetTicketStateById(int id)
        {
            ResponseOk<Ticket> response = new ResponseOk<Ticket>
            {
                Data = await _ticketService.GetTicketById(id)
            };
            //TODO add list actions | task
            _ticketService.FecthActionsToTicket(id);
            return Ok(response);
        }
      

        //  TODO TEST
        // POST api/ticket  @param Ticket      | TODO nuevo DTO con CUSTOMER-CourseID
        [HttpPost]
        public async Task<IActionResult> AddTicket([FromBody]Ticket ticket)
        {
            try
            {
                int ticketId = await _ticketService.CreateTicket(ticket);

                if (ticketId > 0)
                {
                    Ticket ticketDb = await _ticketService.GetTicketById(ticketId);
                    // crear una Action de ticket Creado
                    ActionT ActionNew = _actionService.CreateNewActionT(ticketDb);

                    //FIXME OJO NO SE PUEDE HACER CAPTURAR EL CURSO_ID para la ACTION
                    var actionDb = _actionService.CreateTicketAction(ActionNew);

                    // TODO TEST ADD LISTA OF ACTIONS 
                    _ticketService.FecthActionsToTicket(ticketId);

                    return Ok(ticketDb);
                }
                else { 
                    // TODO CONTROLAR ERROR
                   return BadRequest();
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());             
            }
        }

        // PUT api/ticket/5    @param idTicket | TicketDTO
        [HttpPut("{idTicket}")]
        public async Task<IActionResult> UpdateTicket(int idTicket, [FromBody]UpdateTicketDTO ticketDTO)
        {
            try
            {

                Ticket ticket = await _ticketService.GetTicketById(idTicket);

                _ticketService.MapTicketToTicketDTO(ticket, ticketDTO.Ticket);


                await _ticketService.UpdateTicket(idTicket, ticket);

                // create ACTION
               var actionDb = _actionService.UpdateNewActionT(ticket, ticketDTO.Action);

               int resultAction =  await _actionService.CreateTicketAction(actionDb);

                // FIXME SOLO PARA TEST
                var dictionaryResult = new Dictionary<string, int>
                {
                    { "TicketID", idTicket },
                    { "ActionID", resultAction }
                };

                return Ok(dictionaryResult);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }

        
    }
}
