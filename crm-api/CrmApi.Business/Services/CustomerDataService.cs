using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces;
using CrmApi.Data;
using CrmApi.Data.Domain;

namespace CrmApi.Business.Services
{
    public class CustomerDataService : ICustomerDataService
    {

        private UnitOfWork _unitOfWork;

        public CustomerDataService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<CustomerData> GetCustomerDataById(int id)
        {
            // Todo Refactor
            return await _unitOfWork.CustomerDataRepository.SingleOrDefaultRepository(c => c.CustomerId == id);
        }


        public async Task<IEnumerable<CustomerData>> GetAllCustomerData() {
            // TODO
            return await _unitOfWork.CustomerDataRepository.GetAllAsNoTracking();

        }

        public async Task<int> AddCustomerData(CustomerData data)
        {
            int result = 0;
            if (data != null)
            {
                CustomerData customerD = MapCustomerData(data);
                
                _unitOfWork.CustomerDataRepository.Add(customerD);
                    await _unitOfWork.CompleteAsync();

                result = (int)customerD.Id;
                return result;
            }

            return result;
        }

        public async Task<CustomerData> UpdateCustomerData(int id,  CustomerData data)
        {
            CustomerData dbData = await _unitOfWork.CustomerDataRepository.SingleOrDefaultRepository(c => c.CustomerId == id);

            MapUpdateCustomerData(dbData, data);
             _unitOfWork.CustomerDataRepository.Update(dbData);
            await _unitOfWork.CompleteAsync();

            return dbData;
        }

        public async Task<CustomerData> DeleteCustomerData(int customerId)
        {
            CustomerData dbData = await _unitOfWork.CustomerDataRepository.SingleOrDefaultRepository(c => c.CustomerId == customerId);

            dbData.IsDeleted = true;
            dbData.ModificationDate = DateTime.Now;

            _unitOfWork.CustomerDataRepository.Update(dbData);
            await _unitOfWork.CompleteAsync();
            return dbData;       
        }

    //
        private CustomerData MapCustomerData(CustomerData data)
        {
            return new CustomerData
            {
                CustomerId = data.CustomerId,
                Name = data.Name,
                SurName = data.SurName,
                Phone = data.Phone,
                Phone2 = data.Phone2,
                EMAIL = data.EMAIL,
                Country = data.Country,
                DNI = data.DNI,
                IsDataValidated = data.IsDataValidated
            };
        }

     //
        private void MapUpdateCustomerData(CustomerData dataDb,CustomerData data)
        {
            //  dataDb CustomerId = data.CustomerId,
            dataDb.Name = data.Name;
            dataDb.SurName = data.SurName;
            dataDb.Phone = data.Phone;
            dataDb.Phone2 = data.Phone2;
            dataDb.EMAIL = data.EMAIL;
            dataDb.Country = data.Country;
            dataDb.DNI = data.DNI;
            dataDb.IsDataValidated = data.IsDataValidated;
            dataDb.ModificationDate = DateTime.Now;         
        }




        public async Task<int> CreateFromCustomer(Customer customer)
        {
            int result = 0;
            if (customer != null)
            {
                CustomerData customerD = CreateNewCustomerData(customer);

                _unitOfWork.CustomerDataRepository.Add(customerD);
                await _unitOfWork.CompleteAsync();

                result = (int)customerD.Id;
                return result;
            }

            return result;
        }



        public CustomerData CreateNewCustomerData(Customer customer) {

            return new CustomerData
            {
                CustomerId = (int)customer.Id,
                EMAIL = customer.Email,
                CreationDate = customer.CreationDate,
                ModificationDate = customer.ModificationDate,
                Name = "QUITAR RESTRICCIION EN NUEVA MIGRACION",
                SurName = "QUITAR RESTRICCIION EN NUEVA MIGRACION"
                //Phone = data.Phone,
                //Phone2 = data.Phone2,
                //Country = data.Country,
                //DNI = data.DNI,
                //IsDataValidated = false
            };


        }

    }
}
