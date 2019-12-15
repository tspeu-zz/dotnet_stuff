using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces;
using CrmApi.Data;
using CrmApi.Data.Domain;
using CrmApi.DTOs.CustomerDTO;

namespace CrmApi.Business.Services
{
    public class CustomerService : ICustomerService
    {
        
        private UnitOfWork _unitOfWork;

        public CustomerService()
        {      
            _unitOfWork = new UnitOfWork();
        }

        // Get all only not Deleted Customer
        public async Task<List<Customer>> GetAllCustomer()
        {
            List<Customer> customers = (List<Customer>)await _unitOfWork.CustomerRepository.GetAll();

            foreach (var c in customers)
            {
                _unitOfWork.InterestedCourseRepository.FindRepository(i=> i.CustomerId == c.Id).ToList();

                _unitOfWork.CustomerCommentRepository.FindRepository(comm => comm.CustomerId == c.Id).ToList();

            }

            return customers;
                //.Where(c => !c.IsDeleted).ToList();
        }

        // TODO NEW @return VIEW
        public async Task<IEnumerable<CustomerViewDTO>> GetAllCustomerToView()
        {
            List<CustomerViewDTO> listCustomerView = new List<CustomerViewDTO>();

            List<Customer> customers = (List<Customer>)await _unitOfWork.CustomerRepository.GetAll();

            foreach (var c in customers)
            {
                _unitOfWork.InterestedCourseRepository.FindRepository(i => i.CustomerId == c.Id).ToList();

                _unitOfWork.CustomerCommentRepository.FindRepository(comm => comm.CustomerId == c.Id).ToList();

                var dataCustomer = await _unitOfWork.CustomerDataRepository.SingleOrDefaultRepository(d => d.CustomerId == c.Id);

                var viewCustomer = new CustomerViewDTO
                {

                   // Customer = c,
                    CustomerData = dataCustomer
                };

                listCustomerView.Add(viewCustomer);
            }

           
            return listCustomerView;
        }


        // Get Customer - by id
        public async Task<Customer> GetCustomer(int id)
        {
            var customer = await _unitOfWork.CustomerRepository.GetById(id);

            //add list of Courses
            _unitOfWork.InterestedCourseRepository.FindRepository(c => c.CustomerId == id).ToList();
            _unitOfWork.CustomerCommentRepository.FindRepository(comm => comm.CustomerId == id).ToList();

            return customer;
        }

        public Task<IEnumerable<InterestedCourse>> ListInterestedCourses(int id) {

           return _unitOfWork.InterestedCourseRepository.GetAllCoursesByCustomerId(id);
             
        }


        // validation Task<int>
        public async Task<int> AddCustomer(Customer data)
        {
            int result = 0;
            if (data != null) {
                Customer customer = new Customer
                {
                    Email = data.Email
                };

                _unitOfWork.CustomerRepository.Add(customer);

                 await _unitOfWork.CompleteAsync();

                result = (int)customer.Id;
                return result;
            }
             
            return result;
        }


        // todo test validation -  Return
        public async Task UpdateCustomer(Customer customer)
        {
            if (customer != null) {

                Customer customerDb = await _unitOfWork.CustomerRepository.GetById((int)customer.Id);
                await _unitOfWork.CustomerRepository.UpdateCustomer(customerDb, customer);
                await _unitOfWork.CompleteAsync();          
            }
            else {
              
                throw new Exception("Unable to find the Customer on UpdateCustomer service!");
            }
        }

        // test to delete
        public async Task DeleteCustomer(int id)
        {
            Customer customer =  await _unitOfWork.CustomerRepository.GetById(id);

            if (customer != null)
            {
                await _unitOfWork.CustomerRepository.DeleteCustomer(customer);
                await _unitOfWork.CompleteAsync();
            }
            else {
                throw new Exception("Unable to find the Customer on DeleteCustomer service!");

            }
            
        }

        // TEST
        public Task<List<Customer>> TEST_GetAllAsNoTracking()
        {
            return _unitOfWork.CustomerRepository.GetAllCustomerAsNoTracking();
        }

        public IQueryable<Customer> TEST_GetByIdAsNoTracking(int id)
        {
            return _unitOfWork.CustomerRepository.GetByIdAsNoTracking(id);
        }

        public Task<List<Customer>> TEST_GetAllDeleteAsNoTracking(bool delete)
        {
            return _unitOfWork.CustomerRepository.GetAllDeleteAsNoTracking(delete);
        }
    }
}
