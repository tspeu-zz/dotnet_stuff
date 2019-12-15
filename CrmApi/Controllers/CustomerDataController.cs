using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services;
using CrmApi.Data.Domain;
using Microsoft.AspNetCore.Mvc;


namespace CrmApi.Controllers
{
    [Route("api/[controller]")]
    public class CustomerDataController : Controller
    {
        private readonly CustomerDataService _customerDataService;

        public CustomerDataController(CustomerDataService dataService)
        {
            _customerDataService = dataService;
        }
/*

        // GET: api/customerdata/1    |    @param idCustomer
        [HttpGet("{idCustomer}")]
        public async Task<ActionResult<ResponseOk<CustomerData>>> GetCustomerById(int idCustomer)
        {
            ResponseOk<CustomerData> response = new ResponseOk<CustomerData>
            {
                Data = await _customerDataService.GetCustomerDataById(idCustomer)
            };

            return Ok(response);

        }

        
        // GET: api/customerdata   |    @return List<CustomerData>
        [HttpGet]
        public async Task<ActionResult<ResponseOk<IEnumerable<CustomerData>>>> GetAllCustomer()
        {
            ResponseOk<IEnumerable<CustomerData>> response = new ResponseOk<IEnumerable<CustomerData>>
            {
                Data = await _customerDataService.GetAllCustomerData()
            };

            return Ok(response);

        }
        

        // POST api/customerdata    | @param CustomerData
        [HttpPost]
        public async Task<IActionResult> AddCustomerData([FromBody]CustomerData customerdata)
        {
            try
            {
                int result = await _customerDataService.AddCustomerData(customerdata);
                return Ok(result);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
                //return BadRequest();
            }
        }

        //PUT /api/CustomerData/13  | @param customerID , CustomerData
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateCustomerData(int id, [FromBody]CustomerData value)
        {
            try
            {
                await _customerDataService.UpdateCustomerData(id, value);

                return Ok();
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }


    */


    }
}
