using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.ExceptionDtos;
using CrmApi.Business.Services.Tickets;
using Microsoft.AspNetCore.Mvc;
using TaskT = CrmApi.Data.Domain.Tickets.Task;

namespace CrmApi.Controllers.Tickets
{
    [Route("api/[controller]")]
    public class TaskController : Controller
    {
        TaskService _taskService;

        public TaskController(TaskService taskService)
        {
            _taskService = taskService;
        }

        // GET api/task/1   | @param Id => idTicket | @return List<TaskT>
        [HttpGet("{idTicket}")]

        public async Task<ActionResult<ResponseOk<IEnumerable<TaskT>>>> GetTasksById(int idTicket)
        {
            ResponseOk<IEnumerable<TaskT>> response = new ResponseOk<IEnumerable<TaskT>>
            {
                Data = await _taskService.GetTasksByTicket(idTicket)
            };

            return Ok(response);
        }

        // POST api/task @param TaskT | @return TaskT (with id)
        [HttpPost]
        public async Task<IActionResult> AddTask([FromBody]TaskT taskT)
        {
            try
            {
                if (taskT != null) {

                   var taskDb = await _taskService.AddTicketTask(taskT);

                    return Ok(taskDb);
                }

                return BadRequest();

            }
            catch (Exception e) {

                throw new Exception(e.ToString());
            }
        }


    }
}
