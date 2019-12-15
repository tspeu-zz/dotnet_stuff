using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services;
using CrmApi.Data.Domain;
using CrmApi.DTOs.CustomerDTO;
using Microsoft.AspNetCore.Mvc;


namespace CrmApi.Controllers
{
    [Route("api/[controller]")]
    public class CustomerCommentController: Controller
    {
        private readonly CustomerCommService _customerCommService;

        public CustomerCommentController(CustomerCommService commService) {

            _customerCommService = commService;
        }


        // GET: api/customercomment/id
        [HttpGet("{idCustomer}")]
        public async Task<ActionResult<ResponseOk<List<CustomerComment>>>> GetAllCommentByCustomers(int idCustomer)
        {
            ResponseOk<IEnumerable<CustomerComment>> response = new ResponseOk<IEnumerable<CustomerComment>>
            {   
                Data = await  _customerCommService.GetAllCommentsByCustomer(idCustomer)               
            };

            return Ok(response);
        }

        [HttpPost]
        // POST api/customercomment  | @param customerId | comment
        public async Task<IActionResult> AddComment([FromBody]CustomerComment comm)
        {
            try
            {
                int result = await _customerCommService.AddComment(comm);
                return Ok(result);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
                //return BadRequest();
            }
        }

        // TODO REFACTOR PARA GET POR IdComment 
        // POST api/customercomment/comment/1  | @param idComm 
        [HttpGet("comment/{idComm}")]
        public async Task<ActionResult<ResponseOk<CustomerComment>>> GetComment(int idComm) {

                ResponseOk<CustomerComment> response = new ResponseOk<CustomerComment>
                {
                    Data = await _customerCommService.GetCommentByCustomer(idComm)
                };
          
            return Ok(response);
             
        }

        // PUT | api/customercomment |@param id | idCustomer
        [HttpPut()]
        public async Task<IActionResult> UpdateCustomer([FromBody]CustomerComment comm) {
            try
            {
                await _customerCommService.UpdateComment(comm);
                
                return Ok();
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }

        }

        // PUT | api/customercomment/isdeleted/ | @param idComment | 
        [HttpPut("isdeleted/{id}")]
        public async Task<IActionResult> IsDeletedCustomer(int id)
        {
            try
            {
                await _customerCommService.DeleteComment(id);

                return Ok();
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }
        
    }
}
