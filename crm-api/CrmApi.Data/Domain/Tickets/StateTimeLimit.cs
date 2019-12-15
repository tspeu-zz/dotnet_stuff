using System;
namespace CrmApi.Data.Domain.Tickets
{
    public class StateTimeLimit: BaseEntity
    {
        public int TicketStateId { get; set; }

        public int ActionTypeId { get; set; }

        public TimeSpan Time { get; set; }
    }
}
