using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces;
using CrmApi.Data;
using CrmApi.Data.Domain;
using CrmApi.DTOs.CustomerDTO;

namespace CrmApi.Business.Services
{
    public class CustomerCommService : ICustomerCommentService
    {
        private UnitOfWork _unitOfWork;

        public CustomerCommService()
        {
            _unitOfWork = new UnitOfWork();
        }

        // All Comment by customer ID 
        public async Task <IEnumerable<CustomerComment>> GetAllCommentsByCustomer(int id)
        {
            var comm = await _unitOfWork.CustomerCommentRepository.GetAllCommentsByCustomerId(id);
            return comm;
        }


        // ADD COMMENT  
        public async Task<int> AddComment(CustomerComment comm)
        {
            int result = 0;

            if (comm != null) {

                var comment = new CustomerComment{
                    Comment = comm.Comment,
                    CustomerId = comm.CustomerId,
                    CreationDate = comm.CreationDate             
                };

                _unitOfWork.CustomerCommentRepository.Add(comment);
                result = await _unitOfWork.CompleteAsync();
                return result;
            }

            return result;
        }

        //  comment | Detalle 
        public async Task<CustomerComment> GetCommentByCustomer(int idComm)
        {
            return await _unitOfWork.CustomerCommentRepository.SingleOrDefaultRepository(c => c.Id == idComm);
        }

   
        public async Task UpdateComment(CustomerComment comm)
        {
            if (comm != null)
            {
                CustomerComment commDb = await _unitOfWork.CustomerCommentRepository.SingleOrDefaultRepository(c => c.Id == comm.Id && c.CustomerId == comm.CustomerId);
                await _unitOfWork.CustomerCommentRepository.UpdateComment(commDb, comm);
                await _unitOfWork.CompleteAsync();
            }
            else
            {
                throw new Exception("Unable to find the Customer on UpdateComment service!");
            }
        }

        public async Task DeleteComment(int idComm)
        {
            if (idComm > 0) 
            {
                CustomerComment commDb = await _unitOfWork.CustomerCommentRepository.SingleOrDefaultRepository(c => c.Id == idComm);

                if (commDb != null) {

                    await _unitOfWork.CustomerCommentRepository.DeleteComment(commDb);
                    await _unitOfWork.CompleteAsync();
                }
            }
            else
            {
                throw new Exception("Unable to find the Customer on DeleteComment service!");
            }
        }

    }
}
