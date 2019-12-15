using System;
using System.ComponentModel.DataAnnotations;

namespace CrmApi.Data.Domain.Tickets
{
    public class TicketType : BaseEntity
    {
        //deben ser solo get?¿
        [Required]
        public string Name { get; set; }

        public bool IsAutomaticAssignation { get; set; }

    }
}
