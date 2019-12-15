using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CrmApi.Data.Repositories
{
    public class CustomerCommentRepository: Repository<CustomerComment>, ICustomerCommentRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public CustomerCommentRepository(CrmApiContext context) : base(context) { }


        // get comment  - DETALLE
        public Task<CustomerComment> GetCommentByCustomer(CustomerComment comm)
        {
            return (Task<CustomerComment>)Context.Set<CustomerComment>().Where(c => c.CustomerId == comm.CustomerId && c.Id == comm.Id);
        }

        public  Task<List<CustomerComment>> GetAllCommentsByCustomerId(int id)
        {
            var data =  Context.Set<CustomerComment>().Where(c => c.CustomerId == id);

            return data.ToListAsync();
        }

        public Task UpdateComment(CustomerComment commDb, CustomerComment comm)
        {
            commDb.Comment = comm.Comment;
            commDb.ModificationDate = DateTime.Now;

            Update(commDb);
     
            return Task.CompletedTask;
        }

        public Task DeleteComment(CustomerComment comm)
        {
            comm.IsDeleted = true;
            comm.ModificationDate = DateTime.Now;
            comm.Comment += " - DELETED COMMENT -";

            Update(comm);
            return Task.CompletedTask;
        }
    }
}
