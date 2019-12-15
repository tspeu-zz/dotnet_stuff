using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CrmApi.Data.Repositories
{
    public class CustomerRepository : Repository<Customer>, ICustomerRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public CustomerRepository(CrmApiContext context) : base(context) { }


        public  Task UpdateCustomer(Customer customerDb, Customer customer)
        {   
            customerDb.Email = customer.Email;
            customerDb.IsDeleted = customer.IsDeleted;
            customerDb.ModificationDate = DateTime.Now;

            Update(customerDb);
            //TODO
            return Task.CompletedTask;
        }

        public Task DeleteCustomer(Customer customer)
        {
            customer.IsDeleted = true;
            customer.ModificationDate = DateTime.Now;
            Update(customer);

            return Task.CompletedTask;
        }

        // get all not Deleted Customer 
        public async Task<IEnumerable<Customer>> GetNonDeletedCustomer()
        {
            return await Context.Set<Customer>().Where(c => !c.IsDeleted).ToListAsync();
           
        }

        // TEST 
        public IQueryable<Customer> GetByIdAsNoTracking(int id)
        {
            return Context.Set<Customer>().AsNoTracking().Where(ent => ent.Id == id);
        }

        public Task<List<Customer>> GetAllCustomerAsNoTracking()
        {
            return Context.Set<Customer>().AsNoTracking().ToListAsync();
        }

        public Task<List<Customer>> GetAllDeleteAsNoTracking(bool delete)
        {
            return Context.Set<Customer>().AsNoTracking().Where(ent => ent.IsDeleted == delete).ToListAsync();
        }
    }
}
