using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;
using Task = System.Threading.Tasks.Task;
using ActionT = CrmApi.Data.Domain.Tickets.Action;
using CrmApi.DTOs;
using System.Linq;
using CrmApi.Data.Domain;
using CrmApi.DTOs.Tickets;

namespace CrmApi.Business.Services.Tickets
{
    public class TicketService : ITicketService
    {
        private UnitOfWork _unitOfWork;

        public TicketService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<IEnumerable<TicketsView>> GetAllTickets()
        {

            List<TicketsView> ListTicketsView = new List<TicketsView>();

            CustomerData customerD = new CustomerData();
            //
            var listTickets = await _unitOfWork.TicketRepository.GetAll();
            // FIXME 
            foreach (Ticket t in listTickets)
            {
                var i = t.Id;

                _unitOfWork.ActionRepository.FindRepository(a => a.TicketId == t.Id).ToList();

                var ticketsView = new TicketsView
                {
                    Ticket = t,

                    CustomerData = await _unitOfWork.CustomerDataRepository.GetById(t.CustomerDataId),

                    TicketState = await _unitOfWork.TicketStateRepository.GetById(t.TicketStateId),

                    User = await _unitOfWork.UserRepository.GetById(t.UserId)
                };


                ListTicketsView.Add(ticketsView);

            }

            return ListTicketsView;
            //
        }

        public async Task<IEnumerable<Ticket>> GetAllTicketsByUser(int id)
        {
            return await _unitOfWork.TicketRepository.GetTicketsByUser(id);

        }

        // @Param idTicket
        public async Task<Ticket> GetTicketById(int id)
        {
            return await _unitOfWork.TicketRepository.GetById(id);
        }

        // @Param Ticket
        public async Task<int> CreateTicket(Ticket ticket)
        {
            int res = 0;

            if (ticket != null) {
                var ticketDb = MapTicketData(ticket);

                _unitOfWork.TicketRepository.Add(ticketDb);

                res = await _unitOfWork.CompleteAsync();

                if (res == 1)
                {
                    int ticketID = (int)ticketDb.Id;

                    return ticketID;
                }
                return res;
            }
            return res;
        }

        // @Param idTicket
        public IEnumerable<ActionT> FecthActionsToTicket(int id) {

            return _unitOfWork.ActionRepository.FindRepository(a => a.TicketId == id).ToList();

        }

        // ADD list of Actions To Ticket @Param List<Ticket>
        public IEnumerable<Ticket> FechtActionToListTickets(IEnumerable<Ticket> listT) {

            foreach (Ticket t in listT) {
                var i = t.Id;
                _unitOfWork.ActionRepository.FindRepository(a => a.TicketId == t.Id).ToList();
            }
            var listaTicket = listT;

            return listaTicket;
        }

        // TODO CREAR TASK LIST to TICKET

        public async Task SaveTicketAsync() {

            await _unitOfWork.CompleteAsync();
        }


        public async Task UpdateTicket(int id, Ticket ticket)
        {
            Ticket ticketDb = await _unitOfWork.TicketRepository.SingleOrDefaultRepository(t => t.Id == id);

            if (ticketDb != null)
            {
                //var ticketDb = await GetTicketById((int)ticket.Id);

                 MapUpdateTicketData(ticketDb, ticket);

                _unitOfWork.TicketRepository.Update(ticketDb);

                await _unitOfWork.CompleteAsync();
            }
            else
            {
                throw new Exception("Unable to find the Ticket on UpdateTicket service!");
            }
        }

        public async Task DeleteTicket(int id)
        {
             Ticket ticketDb = await GetTicketById(id);

            if (ticketDb != null)
            {
                await _unitOfWork.TicketRepository.DeleteTicket(ticketDb);
                await _unitOfWork.CompleteAsync();

            }
            else {
                throw new Exception("Unable to find the Ticket on DeleteTicket service!");
            }
        }

        // TODO pasar a util
        public Ticket MapTicketData(Ticket ticket)
        {
           return new Ticket {
               UserId = ticket.UserId,
               CustomerDataId = ticket.CustomerDataId,
               Name = ticket.Name,
               Description = ticket.Description,
               RollId = ticket.RollId,
               TicketStateId = ticket.TicketTypeId,
               PriorityId = ticket.PriorityId,
               TicketTypeId = ticket.TicketTypeId ,
               DueDate = ticket.DueDate
            };
        }

        // FIXME
        public void MapUpdateTicketData(Ticket ticketdb, Ticket ticket)
        {
            ticketdb.UserId = ticket.UserId == 0 ? ticketdb.UserId : ticket.UserId ;
            ticketdb.CustomerDataId = ticket.CustomerDataId != 0 ?  ticket.CustomerDataId : ticketdb.CustomerDataId;
            ticketdb.Name = ticket.Name ?? ticketdb.Name;
            ticketdb.Description = ticket.Description ?? ticketdb.Description;
            ticketdb.RollId = ticket.RollId != 0 ? ticket.RollId : ticketdb.RollId;
            ticketdb.TicketStateId = ticket.TicketStateId != 0 ? ticket.TicketStateId : ticketdb.TicketStateId;
            ticketdb.PriorityId = ticket.PriorityId != 0 ? ticket.PriorityId : ticketdb.PriorityId;
            ticketdb.TicketTypeId = ticket.TicketTypeId != 0 ? ticket.TicketTypeId : ticketdb.TicketTypeId;
            ticketdb.DueDate = true ? ticket.DueDate : ticketdb.DueDate;
            ticketdb.ModificationDate = DateTime.Now; 
        }

        // TODO pasar a util
        public Ticket MapTicketDataDTO(TicketCreatedDTO ticket)
        {
           return new Ticket {
               UserId = (int)ticket.UserId,
               CustomerDataId = (int)ticket.CustomerDataId,
               Name = ticket.Name,
               Description = ticket.Description,
               RollId = (int)ticket.RollId,
               TicketStateId = (int)ticket.TicketTypeId,
               PriorityId = (int)ticket.PriorityId,
               TicketTypeId = (int)ticket.TicketTypeId,
               DueDate = (System.DateTime)ticket.DueDate
           };
        }


        public Ticket CreateNewCustomerTicket(int idCustomerD, int idUser)
        {
            return new Ticket {
                TicketTypeId = 1,
                TicketStateId = 2,
                Name = "TICKET CREADO CON CUSTOMER",
                UserId = idUser,
                CustomerDataId = idCustomerD,
                Description = "TICKET DESDE API CREADO CON EL CUSTOMER ",
                RollId = 0,
                PriorityId = 0,
                DueDate = DateTime.Now.AddDays(2)
            };
        }

        // MAP Ticket con el CustomerDataID


        // FIXME
        public void MapTicketDTOToTicket(TicketCreatedDTO ticketdb, Ticket ticket)
        {
            ticketdb.UserId = ticket.UserId == 0 ? ticketdb.UserId : ticket.UserId;
            ticketdb.CustomerDataId = ticket.CustomerDataId != 0 ? ticket.CustomerDataId : ticketdb.CustomerDataId;
            ticketdb.Name = ticket.Name ?? ticketdb.Name;
            ticketdb.Description = ticket.Description ?? ticketdb.Description;
            ticketdb.RollId = ticket.RollId != 0 ? ticket.RollId : ticketdb.RollId;
            ticketdb.TicketStateId = ticket.TicketStateId != 0 ? ticket.TicketStateId : ticketdb.TicketStateId;
            ticketdb.PriorityId = ticket.PriorityId != 0 ? ticket.PriorityId : ticketdb.PriorityId;
            ticketdb.TicketTypeId = ticket.TicketTypeId != 0 ? ticket.TicketTypeId : ticketdb.TicketTypeId;
            ticketdb.DueDate = true ? ticket.DueDate : ticketdb.DueDate;             
        }

        // FIXME
        public void MapTicketToTicketDTO(Ticket ticketdb, TicketCreatedDTO ticket)
        {
            ticketdb.UserId = ticket.UserId == 0 ? ticketdb.UserId : ticket.UserId;
            ticketdb.CustomerDataId = ticket.CustomerDataId != 0 ? ticket.CustomerDataId : ticketdb.CustomerDataId;
            ticketdb.Name = ticket.Name ?? ticketdb.Name;
            ticketdb.Description = ticket.Description ?? ticketdb.Description;
            ticketdb.RollId = ticket.RollId != 0 ? ticket.RollId : ticketdb.RollId;
            ticketdb.TicketStateId = ticket.TicketStateId != 0 ? ticket.TicketStateId : ticketdb.TicketStateId;
            ticketdb.PriorityId = ticket.PriorityId != 0 ? ticket.PriorityId : ticketdb.PriorityId;
            ticketdb.TicketTypeId = ticket.TicketTypeId != 0 ? ticket.TicketTypeId : ticketdb.TicketTypeId;
            ticketdb.DueDate = true ? ticket.DueDate : ticketdb.DueDate;
            ticketdb.ModificationDate = DateTime.Now; 
        }

    }

}
