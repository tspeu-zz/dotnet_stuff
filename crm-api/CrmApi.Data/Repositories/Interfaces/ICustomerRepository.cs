using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain;

namespace CrmApi.Data.Repositories.Interfaces
{
    public interface ICustomerRepository: IRepository<Customer>
    {
         Task UpdateCustomer(Customer customerDb, Customer customer);
         Task DeleteCustomer(Customer customer);
         Task<IEnumerable<Customer>> GetNonDeletedCustomer();

        //TEST
        Task<List<Customer>> GetAllCustomerAsNoTracking();
        IQueryable<Customer> GetByIdAsNoTracking(int id);
        Task<List<Customer>> GetAllDeleteAsNoTracking(bool delete);
        // 
    }
}
