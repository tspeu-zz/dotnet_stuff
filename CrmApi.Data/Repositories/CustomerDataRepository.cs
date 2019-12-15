using System;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CrmApi.Data.Repositories
{
    public class CustomerDataRepository : Repository<CustomerData>, ICustomerDataRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public CustomerDataRepository(CrmApiContext context) : base(context) { }

        public Task UpdateComment(CustomerData db, CustomerComment comm)
        {
            throw new NotImplementedException();
        }

        public Task DeleteComment(CustomerData comm)
        {
            throw new NotImplementedException();
        }
    }
}
