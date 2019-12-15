using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using TaskT = CrmApi.Data.Domain.Tickets.Task;


namespace CrmApi.Business.Interfaces.Tickets
{
    public interface ITaskService
    {
        Task<int> CreateTicketTask(TaskT task);
        Task<TaskT> AddTicketTask(TaskT task);
        Task UpdateTask(TaskT task);

        Task<IEnumerable<TaskT>> GetTasksByTicket(int idTicket);
    }
}