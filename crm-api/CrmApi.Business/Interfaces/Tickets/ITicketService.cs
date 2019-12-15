using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain.Tickets;
using CrmApi.DTOs.Tickets;
using Task = System.Threading.Tasks.Task;

namespace CrmApi.Business.Interfaces.Tickets
{
    public interface ITicketService
    {
        Task<IEnumerable<TicketsView>> GetAllTickets();
        Task<Ticket> GetTicketById(int id);
        Task<IEnumerable<Ticket>> GetAllTicketsByUser(int id);

        Task<int> CreateTicket(Ticket ticket);

        //Task<Ticket> TEST_CreateTicket(Ticket ticket);
        //Ticket TEST_CreateTicket_TICKET(Ticket ticket);

        Task UpdateTicket(int id, Ticket ticket);

        Task DeleteTicket(int id);


        // TODO HISTORTICOS
       // Task<IEnumerable<Ticket>> GetTicketByIdCampo(int id, string campo);

    }
}
