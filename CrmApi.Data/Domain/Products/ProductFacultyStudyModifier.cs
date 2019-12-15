using System;
namespace CrmApi.Data.Domain.Products
{
    public class ProductFacultyStudyModifier: BaseEntity
    {
        public string FacultyUrl { get; set; }
        public string CategoryUrl { get; set; }
        public float Value { get; set; }
        public bool IsActive { get; set; }
        public int Order { get; set; }
    }
}
