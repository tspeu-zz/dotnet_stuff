using System;
using CrmApi.Business.ExceptionDtos;

namespace CrmApi.Business.Exceptions
{
    public class CustomerNotFoundException: CustomException
    {

        public CustomerNotFoundException(int id) : base(100, $"Customer not found with id = {id}")
        {

            
        }
    }
}
