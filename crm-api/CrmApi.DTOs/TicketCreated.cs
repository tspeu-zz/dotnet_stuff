using System;
namespace CrmApi.DTOs
{
    public class TicketCreatedDTO
    {
        public int  TicketTypeId { get; set; }
        public int  TicketStateId { get; set; }
        public int  CustomerDataId { get; set; }
        public int UserId { get; set; }
        public int  PriorityId { get; set; }
        public int  RollId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public DateTime  DueDate { get; set; }

    }
}
