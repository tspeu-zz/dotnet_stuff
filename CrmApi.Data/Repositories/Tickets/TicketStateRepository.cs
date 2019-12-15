using System;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces.Tickets;

namespace CrmApi.Data.Repositories.Tickets
{
    public class TicketStateRepository : Repository<TicketState>, ITicketStateRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public TicketStateRepository(CrmApiContext context) : base(context) { }

    }
}

