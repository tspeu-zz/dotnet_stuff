using System;
using System.Threading.Tasks;
using CrmApi.Data.Repositories.Tickets;

namespace CrmApi.Data.Repositories.Interfaces
{
    public interface IUnitOfWork : IDisposable
    {
        // add repositories here
        CustomerRepository CustomerRepository { get; }
        InterestedCourseRepository InterestedCourseRepository { get; }
        CustomerCommentRepository CustomerCommentRepository { get; }
        CustomerDataRepository CustomerDataRepository { get; }
        // tickets
        TicketStateRepository TicketStateRepository { get; }
        TicketTypeRepository TicketTypeRepository { get; }

        ActionTypeRepository ActionTypeRepository { get; }
        ActionResultRepository ActionResultRepository { get; }

        TicketRepository TicketRepository { get; }
        ActionRepository ActionRepository { get; }
        TaskRepository TaskRepository { get; }

        // user
        UserRepository UserRepository { get; }

        // save to db
        Task<int> CompleteAsync();
        int Complete();

    }
}
