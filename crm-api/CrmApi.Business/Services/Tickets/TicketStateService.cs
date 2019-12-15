using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Business.Services.Tickets
{
    public class TicketStateService : ITicketSSeervice
    {
        private UnitOfWork _unitOfWork;

        public TicketStateService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<IEnumerable<TicketState>> GetAllTicketStates()
        {
            return await _unitOfWork.TicketStateRepository.GetAllAsNoTracking();
        }

        public async Task<TicketState> GetTicketState(int id)
        {
            return (TicketState)await _unitOfWork.TicketStateRepository.GetById(id);
        }
    }
}
