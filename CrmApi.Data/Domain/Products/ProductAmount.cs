using System;
namespace CrmApi.Data.Domain.Products
{
    public class ProductAmount: BaseEntity
    {
        public string CategoryUrl { get; set; }
        public float Amount { get; set; }
        public bool IsActive { get; set; }
        public int Order { get; set; }
    }
}