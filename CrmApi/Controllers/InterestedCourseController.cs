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
    public class InterestedCourseController : Controller
    {
        private readonly InterestedCourseService _interestedCourseService;

        public InterestedCourseController(InterestedCourseService interestedCourseS)
        {
            _interestedCourseService = interestedCourseS;
        }

        // GET: api/InterestedCourse/1 @param idCustomer | @ @return List<InterestedCourses>
        [HttpGet("{idCustomer}")]
        public async Task<ActionResult<ResponseOk<List<InterestedCourse>>>> GetCoursesInterested(int idCustomer)
        {
            ResponseOk<IEnumerable<InterestedCourse>> response = new ResponseOk<IEnumerable<InterestedCourse>>
            {
                Data = await _interestedCourseService.GetAllCoursesByCustomer(idCustomer)
            };

            return Ok(response);
        }

        // POST api/InterestedCourse/idCustomer
        [HttpPost]
        public async Task<IActionResult> AddCourseInterested([FromBody] InterestedCourse course)
        {
            try
            {
                int result = await _interestedCourseService.AddCourseToCustomer(course);
                return Ok(result);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
                //return BadRequest();
            }
        }

        // put api/InterestedCourse/isdeleted/
        [HttpPut("isdeleted")]
        public async Task<IActionResult> IsDeletedCourse([FromBody] InterestedCourse course)
        {
            try
            {
                await _interestedCourseService.DeleteInterestedCourse(course);

                return Ok();
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }

    }
}
