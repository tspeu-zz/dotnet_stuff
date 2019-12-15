using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.DTOs.CustomerDTO;

namespace CrmApi.Business.Interfaces
{
    public interface ICustomerCommentService
    {
        // add comment
        Task<int> AddComment(CustomerComment comm);
        // get all comment for a Customer
        Task<IEnumerable<CustomerComment>> GetAllCommentsByCustomer(int id);
        //  get comment detail
        Task<CustomerComment> GetCommentByCustomer(int idComm);
        Task UpdateComment(CustomerComment comm);
        Task DeleteComment(int idComm);
    }
}
