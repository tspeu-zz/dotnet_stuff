using System;
namespace CrmApi.Data.Domain.Products
{
    public class ProductInterestCountryModifier : BaseEntity
    {
        public string CountryCode { get; set; }
        public float Value { get; set; }
        public float Around { get; set; }
        public bool IsActive { get; set; }
        public int Order { get; set; }
    }
}
