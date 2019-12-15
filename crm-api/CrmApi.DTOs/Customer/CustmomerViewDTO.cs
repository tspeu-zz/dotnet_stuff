using CrmApi.Data.Domain;

namespace CrmApi.DTOs.CustomerDTO
{
    public class CustomerViewDTO
    {
       // public Customer Customer { get; set; }
        public CustomerData CustomerData { get; set; }
       

        public CustomerViewDTO()
        {
        }
    }
}
