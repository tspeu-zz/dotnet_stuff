using System;
namespace CrmApi.Data.Domain.Products
{
    public class ProductCountryModifier: BaseEntity
    {
        public string CountryCode { get; set; }
        public string CategoryUrl { get; set; }
        public float Value { get; set; }
        public bool IsActive { get; set; }
        public int Order { get; set; }
    }
}
