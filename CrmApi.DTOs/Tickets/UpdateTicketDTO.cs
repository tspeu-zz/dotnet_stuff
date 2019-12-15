using System;
namespace CrmApi.DTOs.Tickets
{
    public class UpdateTicketDTO
    {
        public TicketCreatedDTO Ticket { get; set; }
        public ActionInputDTO Action { get; set; }
    }
}
