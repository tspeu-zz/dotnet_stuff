using System;
namespace CrmApi.DTOs.Customer
{
    public class CustomerData
    {
        public int? Id { get; set; }
        public int CustomerId { get; set; }
        public string Name { get; set; }
        public string SurName { get; set; }
        public string Phone { get; set; }
        public string Phone2 { get; set; }
        public string Country { get; set; }
        public string DNI { get; set; }
        public string EMAIL { get; set; }
        public bool IsDataValidated { get; set; }
    }
}
