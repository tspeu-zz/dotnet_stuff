using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Business.Services.Tickets
{
    public class TicketTypeService : ITicketTypeService
    {
        private UnitOfWork _unitOfWork;

        public TicketTypeService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<IEnumerable<TicketType>> GetAllTicketTypes()
        {
            return await _unitOfWork.TicketTypeRepository.GetAllAsNoTracking();
        }

        public async Task<TicketType> GetTicketType(int id)
        {
            return (TicketType)await _unitOfWork.TicketTypeRepository.GetById(id);
        }
    }
}
