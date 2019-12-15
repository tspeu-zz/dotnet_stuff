using System;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces.Tickets;

namespace CrmApi.Data.Repositories.Tickets
{
    public class TicketTypeRepository : Repository<TicketType>, ITicketTypeRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public TicketTypeRepository(CrmApiContext context) : base(context) { }


    }
}
