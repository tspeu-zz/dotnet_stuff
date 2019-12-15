using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services;
using CrmApi.Business.Services.Tickets;
using CrmApi.Data.Domain;
using CrmApi.Data.Domain.Tickets;
using CrmApi.DTOs.CustomerDTO;
using Microsoft.AspNetCore.Mvc;
using ActionT = CrmApi.Data.Domain.Tickets.Action;


namespace CrmApi.Controllers
{
    [Route("api/[controller]")]
    public class CustomerController : Controller
    {
     
        private readonly CustomerService  _customerService;
        private readonly TicketService _ticketService;
        private readonly ActionService _actionService;


        public CustomerController(CustomerService customerService,
                                  TicketService ticketService,
                                  ActionService actionService)
        {
            _customerService = customerService;
            _ticketService = ticketService;
            _actionService = actionService;
        }

        // GET: api/customer
        [HttpGet]
        public async Task<ActionResult<ResponseOk<List<Customer>>>> GetAllCustomers()
        {
            ResponseOk<List<Customer>> response = new ResponseOk<List<Customer>>
            {
                Data = await _customerService.GetAllCustomer()
                // TEST
                //Data = await _customerService.TEST_GetAllAsNoTracking()
                //Data = (List<CustomerViewDTO>)await _customerService.GetAllCustomerToView()
            };

            return Ok(response);
        }

        // GET: api/customer/1
        [HttpGet("{id}")]
        public async Task<ActionResult<ResponseOk<Customer>>> GetCustomerById(int id)
        {          
                ResponseOk<Customer> response = new ResponseOk<Customer>
                {
                    Data = await _customerService.GetCustomer(id)    
                };
          
            return Ok(response);
            
            //return NotFound();
        }

        // POST api/customer    | @param email
        [HttpPost("idUSer")]
        public async Task<IActionResult> AddCustomer(int idUser, [FromBody]Customer customer)
        {
            try
            {
                int customerId = await _customerService.AddCustomer(customer);
                // TODO CREATE TICKET - ACTION

                //Customer customerDb = await _customerService.GetCustomer(customerId);
                if (customerId > 0)
                {

                    int idTicketNew = await _ticketService.CreateTicket(_ticketService.CreateNewCustomerTicket(customerId, idUser));
                    Ticket ticketCreado = await _ticketService.GetTicketById(idTicketNew);

                    ActionT actionTNew = _actionService.CreateNewActionT(ticketCreado);
                    int idActionTNew = await _actionService.CreateTicketAction(actionTNew);

                    //TEST TODO CREATED A DTO
                    var dictionaryResult = new Dictionary<string, int>
                    {
                        { "CustomerID", customerId },
                        { "TicketID", idTicketNew },
                        { "ActionID", idActionTNew }
                    };

                    return Ok(dictionaryResult);
                }
                else {

                    return Ok("TODO CAPTURAR ERROR!");

                }
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }

        // PUT api/customer/5   | @param email | id
        [HttpPut]     
        public async Task<IActionResult> UpdateCustomer( [FromBody]Customer customer)
        {
            try
            {
                var customerDb = await _customerService.UpdateCustomer(customer);

                return Ok(customerDb);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }

        // DELETE api/customer/isdeleted/5   | @param id
        [HttpPut("isdeleted/{id}")]
        public async Task<IActionResult> IsDeletedCustomer(int id)
        {
            try
            {
                await _customerService.DeleteCustomer(id);
                // borrar tambien CustomerData
                
                // TODO borrar comments - coursesInterested -
                

                return Ok();
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }
    }
}
