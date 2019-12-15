using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.DTOs.CustomerDTO;

namespace CrmApi.Business.Interfaces
{
    public interface ICustomerService
    {         
        Task<Customer> GetCustomer(int id);
        Task<List<Customer>> GetAllCustomer();
        Task<int> AddCustomer(Customer customer); 
        Task UpdateCustomer(Customer customer);
        Task DeleteCustomer(int id);

        // TEST AS NO TRACKING
        Task<List<Customer>> TEST_GetAllAsNoTracking();

        // GET CUSTOMER VIEW
        Task<IEnumerable<CustomerViewDTO>> GetAllCustomerToView();

        //---- TEST 
        IQueryable<Customer> TEST_GetByIdAsNoTracking(int id);
        Task<List<Customer>> TEST_GetAllDeleteAsNoTracking(bool delete);
        // 
    }
}
