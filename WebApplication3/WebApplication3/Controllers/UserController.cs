using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication3.Domain;
using WebApplication3.Services;

namespace WebApplication3.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly UserService _userService;
        public UserController(UserService userS)
        {
            _userService = userS;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<User>>> GetAllTickets()
        {
            var response = await _userService.GetAll();

            return Ok(response);
        }

       // [HttpGet("user/{idUser}")]
        [HttpGet("{id}")]
        public async Task<ActionResult<User>> GetUserById(int id)
        {
            var response = await _userService.getUserById(id);

            return Ok(response);
        }

        [HttpPost]
        public async Task<ActionResult<User>> PostUser([FromBody]User user)
        {
            try
            {
                if (user  != null) { 

                    var res = await _userService.createUser(user);
                    return Ok(user);
                
                }
    
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString());
            }
        }
    }
}