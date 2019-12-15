using System;
using CrmApi.Data.Domain;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Domain.Users;
using Microsoft.EntityFrameworkCore;
using Action = CrmApi.Data.Domain.Tickets.Action;


namespace CrmApi.Data
{
    public class CrmApiContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }
        public DbSet<CustomerData> CustomersData { get; set; }
        public DbSet<CustomerComment> CustomerComments { get; set; }
        public DbSet<InterestedCourse> InterestedCourses { get; set; }
        public DbSet<OrderTlmkClient> OrderTlmkClients { get; set; }

        // tickets
        public DbSet<TicketType> TicketTypes { get; set; }
        public DbSet<TicketState> TicketStates { get; set; }
        public DbSet<ActionType> ActionTypes { get; set; }
        public DbSet<ActionResult> ActionResults { get; set; }
        public DbSet<PriorityId> PriorityId { get; set; }
        public DbSet<Ticket> Tickets { get; set; }
        public DbSet<Action> Actions { get; set; }
        public DbSet<Task> Tasks { get; set; }

        // users
        public DbSet<User>  Users { get; set; }
        public DbSet<UserMail>  UserMails { get; set; }
        

        public CrmApiContext(DbContextOptions<CrmApiContext> options): base(options){}

        public CrmApiContext()
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=192.168.1.216,1433;Database=testCRM;User Id=sa;Password=Aa99Dc31Docker;MultipleActiveResultSets=true;");
            }
        }

        //public CrmApiContext(){}

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            // add composite KEYS
            modelBuilder.Entity<InterestedCourse>()
                .HasKey(c => new { c.Id, c.CourseId, c.CustomerId });

            modelBuilder.Entity<OrderTlmkClient>()
                .HasKey(o => new { o.Id, o.NumOrder, o.CustomerId });

            // add foreign KEYS
            //.HasOne(p => p.CustomerId).WithOne().HasForeignKey<Customer>(c => c.Id);
            modelBuilder.Entity<CustomerData>()
                .HasOne<Customer>()
                .WithOne()
                .HasForeignKey<CustomerData>(c => c.CustomerId);

            modelBuilder.Entity<CustomerComment>()
                .HasOne(c => c.Customer)
                .WithMany(b => b.CustomerCommentList)
                .HasForeignKey(b => b.CustomerId);

            modelBuilder.Entity<InterestedCourse>()
                .HasOne(c => c.Customer)
                .WithMany(i => i.InterestedCourseList)
                .HasForeignKey(c => c.CustomerId);

            modelBuilder.Entity<OrderTlmkClient>()
                .HasOne(c => c.Customer)
                .WithMany(o => o.OrderTlmkClientList)
                .HasForeignKey(c => c.CustomerId);

            //-- TEST FIXME --//
            /*
            modelBuilder.Entity<Ticket>()
                .HasOne<CustomerData>()
                .WithOne()
                .HasForeignKey<Ticket>(t => t.CustomerDataId);

            */

            // tickets
            modelBuilder.Entity<Action>()
                .HasOne(a => a.Ticket)
                .WithMany(t => t.ActionsList)
                .HasForeignKey(a => a.TicketId);

            modelBuilder.Entity<Task>()
                .HasOne(ta => ta.Ticket)
                .WithMany(t => t.TasksList)
                .HasForeignKey(ta => ta.TicketId);


            // user







            // add default values
            modelBuilder.Entity<Customer>()
              .Property("CreationDate")
              .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Customer>()
              .Property("ModificationDate")
              .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Customer>()
                .Property("IsDeleted")
                .HasDefaultValue(false);

            modelBuilder.Entity<CustomerData>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<CustomerData>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<CustomerData>()
              .Property("IsDeleted")
             .HasDefaultValue(false);

            modelBuilder.Entity<CustomerComment>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<CustomerComment>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<CustomerComment>()
              .Property("IsDeleted")
              .HasDefaultValue(false);

            modelBuilder.Entity<InterestedCourse>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<InterestedCourse>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<InterestedCourse>()
             .Property("IsDeleted")
             .HasDefaultValue(false);

            modelBuilder.Entity<OrderTlmkClient>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<OrderTlmkClient>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<OrderTlmkClient>()
             .Property("IsDeleted")
             .HasDefaultValue(false);

            // default values tickets
            modelBuilder.Entity<TicketType>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<TicketType>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<TicketState>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<TicketState>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<ActionType>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<ActionType>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<ActionResult>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<ActionResult>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);
            
            modelBuilder.Entity<Ticket>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Ticket>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Ticket>()
             .Property("IsDeleted")
             .HasDefaultValue(false);
            //
            modelBuilder.Entity<Action>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Action>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Task>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<Task>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            //user
            modelBuilder.Entity<User>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<User>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<User>()
             .Property("IsDeleted")
             .HasDefaultValue(false);

            modelBuilder.Entity<UserMail>()
             .Property("CreationDate")
             .HasDefaultValue(DateTime.Now);

            modelBuilder.Entity<UserMail>()
             .Property("ModificationDate")
             .HasDefaultValue(DateTime.Now);



            // ADD DEFAULT DATA
            modelBuilder.Entity<Customer>()
                .HasData(
                    new Customer {
                        Id = 1,
                        Email = "test1@email.com",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false

                    },
                    new Customer {
                        Id = 2,
                        Email = "test2@email.com",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false
                    },
                    new Customer {
                        Id = 3,
                        Email = "3test3@email.com",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false
                    }
                );

            modelBuilder.Entity<CustomerData>()
                .HasData(
                    new CustomerData {
                        Id = 1,
                        CustomerId = 1,
                        Name = "Customer Test 1",
                        SurName = "LastName 1",
                        DNI = "00000001",
                        EMAIL = "",
                        Phone = "5555501",
                        Phone2= "",
                        Country = "ES",
                        IsDataValidated= false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false
                    },
                    new CustomerData {
                        Id = 2,
                        CustomerId = 2,
                        Name = "Customer Test 2",
                        SurName = "Customer LastName 2",
                        DNI = "20000002",
                        EMAIL = "",
                        Phone = "",
                        Phone2= "",
                        Country = "ES",
                        IsDataValidated= false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false
                    },
                    new CustomerData {
                        Id = 3,
                        CustomerId = 3,
                        Name = "Customer 3",
                        SurName = "LastName 3",
                        DNI = "00000003",
                        EMAIL = "3test3@email.com",
                        Phone = "5555553",
                        Phone2= "0055553",
                        Country = "ES",
                        IsDataValidated= false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false
                    }
                );

            modelBuilder.Entity<CustomerComment>()
                .HasData(
                    new CustomerComment {
                        Id = 1,
                        CustomerId =1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Comment = "comentario de test Customer 1",
                        IsDeleted = false
                    },
                    new CustomerComment {
                        Id = 2,
                        CustomerId =2,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Comment = "test Customer 2 comentario",
                        IsDeleted = false
                    },
                    new CustomerComment {
                        Id = 3,
                        CustomerId =1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Comment = "test otro comentario Customer 1  bla bla ... comentario",
                        IsDeleted = false
                    },
                    new CustomerComment {
                        Id = 4,
                        CustomerId =1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Comment = "mas comentarios del Customer 1  bla bla ... bla bla ....",
                        IsDeleted = false
                    }
                );
            

            // ticket
            modelBuilder.Entity<TicketType>()
                .HasData(
                    new TicketType
                    {
                        Id = 1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "ContactRequest",
                        IsAutomaticAssignation = false,
                        IsDeleted = false
                    },
                    new TicketType
                    {
                        Id = 2,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "CancellationTrial",
                        IsAutomaticAssignation = false,
                        IsDeleted = false
                    },
                    new TicketType
                    {
                        Id = 3,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Cancellation",
                        IsAutomaticAssignation = false,
                        IsDeleted = false
                    },
                    new TicketType
                    {
                        Id = 4,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Return",
                        IsAutomaticAssignation = false,
                        IsDeleted = false
                    },
                    new TicketType
                    {
                        Id = 5,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "ReturnError",
                        IsAutomaticAssignation = false,
                        IsDeleted = false
                    },
                    new TicketType
                    {
                        Id = 6,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Custom",
                        IsAutomaticAssignation = false,
                        IsDeleted = false
                    }
                );

            modelBuilder.Entity<TicketState>()
                .HasData(
                    new TicketState {
                        Id = 1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "BACKLOG"
                    },
                    new TicketState {
                        Id = 2,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "TODO"
                    },
                    new TicketState {
                        Id = 3,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "WAITTING"
                    },
                    new TicketState {
                        Id = 4,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "IN PROGRESS"
                    },
                    new TicketState {
                        Id = 5,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "DONE"
                    }
                );

            modelBuilder.Entity<ActionType>()
                .HasData(
                    new ActionType {
                        Id = 1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "ChangeAssignedUser",
                        ParentId = 11
                    },
                    new ActionType {
                        Id = 2,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Pospone ticket",
                        ParentId = 11
                    },
                    new ActionType {
                        Id = 3,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "ChangeStateTIcket",
                        ParentId = 11
                    },
                    new ActionType {
                        Id = 4,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Dossier",
                        ParentId = 12
                    },
                    new ActionType {
                        Id = 5,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "PreMatrícula",
                        ParentId = 12
                    },
                    new ActionType {
                        Id = 6,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Formulario Contacto",
                        ParentId = 12
                    },
                    new ActionType {
                        Id = 7,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Venta",
                        ParentId = 13
                    },
                    new ActionType {
                        Id = 8,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Call",
                        ParentId = 13
                    },
                    new ActionType {
                        Id = 9,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "SendMail",
                        ParentId = 13
                    },
                    new ActionType {
                        Id = 10,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Receive Mail",
                        ParentId = 12
                    },
                    new ActionType {
                        Id = 11,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Ticket",
                        ParentId = 0
                    },
                    new ActionType {
                        Id = 12,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Customer",
                        ParentId = 0
                    },
                    new ActionType {
                        Id = 13,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Commertial",
                        ParentId = 0
                    },
                    new ActionType {
                        Id = 14,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Database",
                        ParentId = 0
                    },
                    new ActionType {
                        Id = 15,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Comment",
                        ParentId = 13
                    },                   
                    new ActionType {
                        Id = 16,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "CreateTicket",
                        ParentId = 12
                    }
                );

            modelBuilder.Entity<ActionResult>()
                .HasData(
                    new ActionResult {
                        Id = 1,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Call NoContesta",
                        ActionTypeId = 3,
                        NextStateId = 0,
                        NextActionTypeId = 0
                    },
                    new ActionResult {
                        Id = 2,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Call Venta",
                        ActionTypeId = 3,
                        NextStateId = 0,
                        NextActionTypeId = 7
                    },
                    new ActionResult {
                        Id = 3,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Call NoInteresado",
                        ActionTypeId = 3,
                        NextStateId = 5,
                        NextActionTypeId = 0
                    },
                    new ActionResult {
                        Id = 4,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        Name = "Call NumeroNoDisponible",
                        ActionTypeId = 3,
                        NextStateId = 0,
                        NextActionTypeId = 0
                    }
                );


            modelBuilder.Entity<User>()
                .HasData(
                    new User {
                        Id = 1,
                        FirstName = "Comercial",
                        LastName = "Uno",
                        ActiveDirectoryId = 0,
                        CountryId = 1,
                        UserPrincipalName = "Comercial Uno",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false,
                        IsActive = true,
                        JobTittle = "Commertial",
                        IsWorking = true,
                        Phone = "55555001"
                    },
                    new User {
                        Id = 2,
                        FirstName = "Sra. Comercial",
                        LastName = "Dos",
                        ActiveDirectoryId = 0,
                        CountryId = 1,
                        UserPrincipalName = "Comercial Dos",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false,
                        IsActive = true,
                        JobTittle = "Commertial",
                        IsWorking = true,
                        Phone = "66666002"
                    }, 
                    new User {
                        Id = 3,
                        FirstName = "Dña. Comercial",
                        LastName = "Tres",
                        ActiveDirectoryId = 0,
                        CountryId = 1,
                        UserPrincipalName = "Comercial Tres",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false,
                        IsActive = true,
                        JobTittle = "Commertial",
                        IsWorking = true,
                        Phone = "777770033"
                    }, 
                    new User {
                        Id = 4,
                        FirstName = "El Comercial",
                        LastName = "Cuatro",
                        ActiveDirectoryId = 0,
                        CountryId = 1,
                        UserPrincipalName = "Comercial Cuatro",
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                        IsDeleted = false,
                        IsActive = true,
                        JobTittle = "Commertial",
                        IsWorking = true,
                        Phone = "888800044"
                    }
                );

            modelBuilder.Entity<UserMail>()
                .HasData(
                    new UserMail {
                        Id = 1,
                        MailAddress = "comercial1@techtitute.com",
                        UserId = 1,
                        IsDefault = false,
                        IsDeleted = false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                    },
                    new UserMail {
                        Id = 2,
                        MailAddress = "2comercial2@techtitute.com",
                        UserId = 2,
                        IsDefault = false,
                        IsDeleted = false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                    },
                    new UserMail {
                        Id = 3,
                        MailAddress = "3comercial3@techtitute.com",
                        UserId = 3,
                        IsDefault = false,
                        IsDeleted = false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                    },
                    new UserMail {
                        Id = 4,
                        MailAddress = "elcomercialcuatro@techtitute.com",
                        UserId = 4,
                        IsDefault = false,
                        IsDeleted = false,
                        CreationDate = DateTime.Now,
                        ModificationDate = DateTime.Now,
                    }
                );
        }

        private static int GetCustomerId(CustomerData p)
        {
            return p.CustomerId;
        }
    }
}
