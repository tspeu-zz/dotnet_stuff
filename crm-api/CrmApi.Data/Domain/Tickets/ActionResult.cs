using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrmApi.Data.Domain.Tickets
{
    public class ActionResult : BaseEntity
    {
        [Required]
        public string Name { get; set; }

        //[ForeignKey(nameof(ActionType))]
        public int ActionTypeId { get; set; }

        public int NextActionTypeId { get; set; }
        public int NextStateId { get; set; }
    }
}
