using System;
namespace CrmApi.DTOs.Tickets
{
    public class ActionResultDto
    {
        public string Name { get; set; }
        public int ActionTypeId { get; set; }
        public int NextActionTypeId { get; set; }
        public int NextStateId { get; set; }

        public int? Id { get; set; }
        public DateTime CreationDate { get; set; }
        public DateTime ModificationDate { get; set; }
        public bool IsDeleted { get; set; } 

    }
}
