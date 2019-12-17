using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3.Domain;

namespace WebApplication3.Services.Interfaces
{
    interface IUserService
    {
        Task <IEnumerable<User>> GetAll();
        //Task<List<Customer>> GetAllCustomer();

        Task<User> getUserById(int id);

        Task<int> createUser(User user);

        Task<User> updateUser(User user);

        Task Delete(User user);

       
    }
}
