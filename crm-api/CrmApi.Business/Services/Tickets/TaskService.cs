using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Data;
using CrmApi.Data.Domain.Tickets;
using Task = System.Threading.Tasks.Task;
using TaskT = CrmApi.Data.Domain.Tickets.Task;

namespace CrmApi.Business.Services.Tickets
{
    public class TaskService: ITaskService
    {
        UnitOfWork _unitOfWork;

        public TaskService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public async Task<IEnumerable<TaskT>> GetTasksByTicket(int idTicket)
        {
            return await _unitOfWork.TaskRepository.GetTasksByTickets(idTicket);
        }


        public async Task<TaskT> AddTicketTask(TaskT task)
        {
            _unitOfWork.TaskRepository.Add(task);

            await _unitOfWork.CompleteAsync();

            var TaskDb = _unitOfWork.TaskRepository.GetById((int)task.Id);

            return await TaskDb;
        }

        public async Task<int> CreateTicketTask(TaskT task)
        {
            int res = 0;

            if (task != null)
            {
                _unitOfWork.TaskRepository.Add(task);
                res = await _unitOfWork.CompleteAsync();
                //ActionNew
                if (res == 1)
                {
                    return (int)task.Id;
                }

                return res;
            }
            return res;
        }


        public Task UpdateTask(TaskT task)
        {
            throw new NotImplementedException();
        }
    }
}
