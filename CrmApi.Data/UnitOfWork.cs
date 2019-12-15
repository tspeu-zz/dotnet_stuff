using System;
using System.Threading.Tasks;
using CrmApi.Data.Repositories;
using CrmApi.Data.Repositories.Interfaces;
using CrmApi.Data.Repositories.Tickets;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace CrmApi.Data
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly CrmApiContext _context;
        
        // add repositories
        public CustomerRepository CustomerRepository { get; private set; }
        public InterestedCourseRepository InterestedCourseRepository { get; private set; }
        public CustomerCommentRepository CustomerCommentRepository { get; private set; }
        // TODO BORRAR public CustomerDataRepository CustomerDataRepository { get; private set; }
        public TicketStateRepository TicketStateRepository { get; private set; }
        public TicketTypeRepository TicketTypeRepository { get; private set; }
        public ActionTypeRepository ActionTypeRepository { get; private set;}
        public ActionResultRepository ActionResultRepository { get; private set; }

        public TicketRepository TicketRepository { get; private set; }
        public ActionRepository ActionRepository { get; private set; }
        public TaskRepository TaskRepository { get; private set; }

        public UserRepository UserRepository { get; private set; }

        //

        public UnitOfWork()
        {
            this._context = new CrmApiContext();      
            CustomerRepository = new CustomerRepository(_context);
            InterestedCourseRepository = new InterestedCourseRepository(_context);
            CustomerCommentRepository = new CustomerCommentRepository(_context);
            // TODO BORRAR CustomerDataRepository = new CustomerDataRepository(_context);
            TicketStateRepository = new TicketStateRepository(_context);
            TicketTypeRepository = new TicketTypeRepository(_context);
            ActionTypeRepository = new ActionTypeRepository(_context);
            ActionResultRepository = new ActionResultRepository(_context);
            TicketRepository = new TicketRepository(_context);
            ActionRepository = new ActionRepository(_context);
            TaskRepository = new TaskRepository(_context);
            UserRepository = new UserRepository(_context);

        }


        // to save all to db
        public async Task<int> CompleteAsync()
        {
            try
            {
                return await _context.SaveChangesAsync();
            } // todo
            catch (Exception ex)
            {
                throw new Exception("Error to save data to de Db!", ex);
            }
        }

        public void Dispose()
        {
            _context.Dispose();
        }

        public int Complete()
        {
            try
            {
                return _context.SaveChanges();
            } // todo
            catch (Exception ex)
            {
                throw new Exception("Error to save data to de Db!", ex);
            }
        }
    }
}
