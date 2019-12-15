using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;

namespace CrmApi.Business.Services.Tickets
{
    public class ActionTypeService : IActionTypeService
    {
        private UnitOfWork _unitOfWork;

        public ActionTypeService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<ActionType> GetActionType(int id)
        {
            return await _unitOfWork.ActionTypeRepository.GetById(id);
        }

        public async Task<IEnumerable<ActionType>> GetAllActionType()
        {
            return await _unitOfWork.ActionTypeRepository.GetAllAsNoTracking();
        }
    }
}
