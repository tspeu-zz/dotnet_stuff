using System;
using System.Linq;
using CrmApi.Data.Domain;
using CrmApi.DTOs.CustomerDTO;

namespace CrmApi.Business.Mapper
{
    public class CustomerMapper
    {
        public CustomerMapper()
        {
        }

        public IQueryable<CustomerDto> MapToCustomer(IQueryable<Customer> customer, int id )
        {


            return null;
                //customer.SingleOrDefault( c => c.Id == id);

        }
    }
}
