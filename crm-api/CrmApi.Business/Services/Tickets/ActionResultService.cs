using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;
using CrmApi.DTOs.Tickets;

namespace CrmApi.Business.Services.Tickets
{
    public class ActionResultService : IActionResultService
    {
        private UnitOfWork _unitOfWork;

        public ActionResultService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<IEnumerable<ActionResult>> GetAllActionResult()
        {
            return await _unitOfWork.ActionResultRepository.GetAllAsNoTracking();
        }


        public async Task<ActionResult> GetActionResult(int id)
        {
            return await _unitOfWork.ActionResultRepository.GetById(id);
        }

        public ActionResultDto MapActionResultDto(ActionResult actionResult) {

            return new ActionResultDto {
                Id = actionResult.Id,
                Name = actionResult.Name,
                ActionTypeId = actionResult.ActionTypeId,
                NextActionTypeId = actionResult.NextActionTypeId,
                NextStateId = actionResult.NextStateId,
                IsDeleted = actionResult.IsDeleted
            };
           

        }

    }
}
