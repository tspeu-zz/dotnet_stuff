using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;
using CrmApi.DTOs.Tickets;
using ActionT = CrmApi.Data.Domain.Tickets.Action;
using Task = System.Threading.Tasks.Task;


namespace CrmApi.Business.Services.Tickets
{
    public class ActionService: IActionService
    {
        UnitOfWork _unitOfWork;

        public ActionService()
        {
            _unitOfWork = new UnitOfWork();
        }

        // get Accions by Ticket @parma idTicket | @return List<AccionT>
        public async Task<IEnumerable<ActionT>> GetAcctionsByTicket(int ticketId)
        {
            return await _unitOfWork.ActionRepository.GetActionsByTickets(ticketId);
        }

        // add Action @param Action | @return IdAction
        public async Task<int> CreateTicketAction(ActionT action)
        {
            int res = 0;

            if (action != null)
            {
               
                _unitOfWork.ActionRepository.Add(action);
                res = await _unitOfWork.CompleteAsync();
                //ActionNew
                if (res == 1)
                {
                    return (int)action.Id;
                }          
                return res;        
            }
            return res;
        }

        // add Action @param Action(without ActionId) | @return Action(with ActionID)
        public async Task<ActionT> AddTicketActionT(int idTicket, ActionT actionT)
        {
            actionT.TicketId = idTicket;

             _unitOfWork.ActionRepository.Add(actionT);
            await  _unitOfWork.CompleteAsync();

            var actionTicket = _unitOfWork.ActionRepository.GetById((int)actionT.Id);

            return await actionTicket;
        }


        public async Task UpdateActionT(int id, ActionT action)
        {
            ActionT actionDb = await _unitOfWork.ActionRepository.SingleOrDefaultRepository(a => a.Id == id);

            if (actionDb != null)
            {             
                MapUpdateActionData(actionDb, action);

                _unitOfWork.ActionRepository.Update(actionDb);

                await _unitOfWork.CompleteAsync();
            }
            else
            {
                throw new Exception("Unable to find the Ticket on UpdateTicket service!");
            }
        }

        public void MapUpdateActionData(ActionT actionDb,ActionT action) {

            actionDb.UserId = action.UserId == 0 ? actionDb.UserId : action.UserId;
            actionDb.ActionResultId = action.ActionResultId != 0 ? action.ActionResultId : actionDb.ActionResultId;
            actionDb.ActionTypeId = action.ActionTypeId != 0 ? action.ActionTypeId : actionDb.ActionTypeId;
            actionDb.ChangedStateTicketId = true ? action.ChangedStateTicketId : actionDb.ChangedStateTicketId;
            actionDb.ChangedUserId = true ? action.ChangedUserId : actionDb.ChangedUserId;
            actionDb.CouponId = true ? action.CouponId : actionDb.CouponId;
            actionDb.CourseId = action.CourseId != 0 ? action.CourseId : actionDb.CourseId;
            actionDb.Description = action.Description != null ? action.Description : actionDb.Description;
            actionDb.EndDate = true ? action.EndDate : actionDb.EndDate;
            actionDb.ModificationDate = DateTime.Now;
            actionDb.Origen = action.Origen ?? actionDb.Origen;
            actionDb.PosponeTicketTime = true ? action.PosponeTicketTime : actionDb.PosponeTicketTime;
            actionDb.ProccesedDate = true ? action.ProccesedDate : actionDb.ProccesedDate;
            actionDb.Tittle = action.Tittle ?? actionDb.Tittle;
            actionDb.WebId = action.WebId != 0 ? action.WebId : actionDb.WebId;
        }

        //
        public ActionT CreateNewActionT( Ticket ticketDb) {
            return new ActionT
            {
                TicketId = (int)ticketDb.Id,
                ActionTypeId = 20,
                Tittle = ticketDb.Name,
                Description = ticketDb.Description,
                UserId = ticketDb.UserId,
                Origen = "DESDE LA API",
            };
        }

        public ActionT UpdateNewActionT( Ticket ticketDb, ActionInputDTO actionInputDTO) {
            return new ActionT
            {
                TicketId = (int)ticketDb.Id,
                Tittle = ticketDb.Name,
                Description = ticketDb.Description,
                UserId = ticketDb.UserId,
                Origen = "UPDATE DESDE LA API",

                ActionTypeId = actionInputDTO.ActionTypeId, 
                ActionResultId = actionInputDTO.ActionResultId,
                ChangedStateTicketId = actionInputDTO.ChangedStateTicketId,
                ChangedUserId = actionInputDTO.ChangedUserId,
                CouponId = actionInputDTO.CouponId,
                CourseId = actionInputDTO.CourseId,
                CreationDate = DateTime.Now,
                EndDate =  DateTime.Now.AddDays(5),
                WebId = actionInputDTO.WebId,
                PosponeTicketTime = actionInputDTO.PosponeTicketTime,
                ProccesedDate = actionInputDTO.ProccesedDate

            };
        }

    }
}
