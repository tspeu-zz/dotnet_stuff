using System;
namespace CrmApi.Data.Domain.Tickets
{
    public class Task: BaseEntity
    {
        public string Tittle { get; set; }

        public int TicketId { get; set; }

        public int ActionTypeId { get; set; }

        public DateTime DueTime { get; set; }

        public bool IsCompleted { get; set; }

       //
       public Ticket Ticket { get; set; }
        
    }
}
