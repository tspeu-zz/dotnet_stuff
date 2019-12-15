using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace CrmApi.Data.Domain.Tickets
{
    public class Ticket: BaseEntityTicket
    {
        public int RollId { get; set; }

        [Required]
        public int TicketTypeId { get; set; }

        [Required]
        public int TicketStateId { get; set; }

        public int PriorityId { get; set; }

        [Required]
        [ForeignKey("Customerd")]
        public int CustomerId { get; set; }
        public virtual Customer Customer { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        // [Required]
        public int UserId { get; set; }

        //public DateTime CreationDate { get; set; }

        public DateTime DueDate { get; set; }

        // one ticket many
        public List<Action> ActionsList { get; set; }

        public List<Task> TasksList { get; set; }


    }
}
