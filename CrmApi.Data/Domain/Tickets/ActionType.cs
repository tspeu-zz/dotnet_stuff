using System;
using System.ComponentModel.DataAnnotations;

namespace CrmApi.Data.Domain.Tickets
{
    public class ActionType: BaseEntity
    {
        [Required]
        public string Name { get; set; }
        public int ParentId { get; set; }
    }
}
