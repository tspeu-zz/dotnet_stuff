using System;
namespace CrmApi.DTOs.Customer
{
    public class CustomerComment
    {
        public int? Id { get; set; }
        public int CustomerId { get; set; }
        public string Comment { get; set; }
        public DateTime Date { get; set; }
    }
}
