using System;
using System.Threading.Tasks;
using CrmApi.Data.Domain;

namespace CrmApi.Data.Repositories.Interfaces
{
    public interface ICustomerDataRepository : IRepository<CustomerData>
    {
        Task UpdateComment(CustomerData db, CustomerComment comm);
        Task DeleteComment(CustomerData comm);
    }
}
