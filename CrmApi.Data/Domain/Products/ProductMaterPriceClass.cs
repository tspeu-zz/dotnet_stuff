using System;
namespace CrmApi.Data.Domain.Products
{
    public class ProductMasterPrice: BaseEntity
    {
        public string CountryCode { get; set; }
        public string CategoryUrl { get; set; }
        public string FacultyUrl { get; set; }
        public int IdProductAmount { get; set; }
        public float TotalAmount { get; set; }
    }
}
