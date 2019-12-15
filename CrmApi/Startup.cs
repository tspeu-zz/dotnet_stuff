using CrmApi.Data;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;

using Microsoft.OpenApi.Models;
using CrmApi.Business.Services;
using CrmApi.Data.Repositories;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using CrmApi.Business.Interfaces.Tickets;
using CrmApi.Business.Services.Tickets;
using CrmApi.Data.Repositories.Interfaces.Tickets;
using CrmApi.Data.Repositories.Tickets;

namespace CrmApi
{
    public class Startup
    {
        public IConfiguration Configuration { get; }

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }


        public void ConfigureServices(IServiceCollection services)
        {

            var connection = Configuration["ConnectionStrings:Default"];

            //services.AddDbContext<CrmApiContext>(options =>
            //options.UseSqlServer(connection, b => b.MigrationsAssembly("testCRM_2")));

            services.AddDbContext<CrmApiContext>(options =>
             options.UseSqlServer(Configuration.GetConnectionString("Default")));

            // services
            services.AddScoped<CustomerService>();
            services.AddScoped<InterestedCourseService>();
            services.AddScoped<CustomerCommService>();
            // TODO BORRARservices.AddScoped<CustomerDataService>();
            services.AddScoped<TicketStateService>();
            services.AddScoped<TicketTypeService>();
            services.AddScoped<ActionResultService>();
            services.AddScoped<ActionTypeService>();
            services.AddScoped<TicketService>();
            services.AddScoped<ActionService>();
            services.AddScoped<TaskService>();
            

            // repositories
            services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
            services.AddScoped(typeof(IRepositoryBaseEntity<>), typeof(RepositoryBaseEntity<>));
            services.AddTransient<ICustomerRepository, CustomerRepository>();
            services.AddTransient<IInterestedCourseRepository, InterestedCourseRepository>();
            services.AddTransient<ICustomerCommentRepository, CustomerCommentRepository>();
            // TODO BORRAR services.AddTransient<ICustomerDataRepository, CustomerDataRepository>();
            services.AddTransient<ITicketStateRepository, TicketStateRepository>();
            services.AddTransient<ITicketTypeRepository, TicketTypeRepository>();
            services.AddTransient<IActionTypeRepository, ActionTypeRepository>();
            services.AddTransient<IActionResultRepository, ActionResultRepository>();
            services.AddTransient<ITicketRepository, TicketRepository>();
            services.AddTransient<IActionRepository, ActionRepository>();
            services.AddTransient<ITaskRepository, TaskRepository>();
            services.AddTransient<IUserRepository, UserRepository>();

            // Fix CORS 
            services.AddCors();

            services.AddControllers();
         
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "CRM API", Version = "v1" });
            });

            //fix Json Error
            services.AddMvc(option => option.EnableEndpointRouting = false)
                .SetCompatibilityVersion(CompatibilityVersion.Version_3_0)
                .AddNewtonsoftJson(opt => opt.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore);

            //services.AddControllers().AddNewtonsoftJson(x => x.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore);


        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            // app.UseCors("CorsPolicy");
            app.UseCors(
               options => options.SetIsOriginAllowed(x => _ = true).AllowAnyMethod().AllowAnyHeader().AllowCredentials()
           );

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();

            });

            app.UseHttpsRedirection();

            app.UseSwagger();
      
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "CRM API");
            });

        }
    }
}
