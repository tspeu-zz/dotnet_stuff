using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain;

namespace CrmApi.Data.Repositories.Interfaces
{
    public interface ICustomerCommentRepository : IRepository<CustomerComment>
    {
        Task<CustomerComment> GetCommentByCustomer(CustomerComment comm);
        Task<List<CustomerComment>> GetAllCommentsByCustomerId(int id);
        Task UpdateComment(CustomerComment db, CustomerComment comm);
        Task DeleteComment(CustomerComment comm);
    }

}
