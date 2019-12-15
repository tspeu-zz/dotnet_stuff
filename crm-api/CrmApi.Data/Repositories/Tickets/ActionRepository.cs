using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using CrmApi.Data.Repositories.Interfaces.Tickets;
using ActionT = CrmApi.Data.Domain.Tickets.Action;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces;
using System.Linq.Expressions;

namespace CrmApi.Data.Repositories.Tickets
{
    public class ActionRepository: Repository<ActionT>, IActionRepository
    {
         
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public ActionRepository(CrmApiContext context) : base(context) { }



        public async Task<IEnumerable<ActionT>> GetActionsByTickets(int id)
        {
            var actions = await Context.Set<ActionT>().AsNoTracking().Where(a => a.TicketId == id).ToListAsync();

            return actions;
        }

       
    }
}
