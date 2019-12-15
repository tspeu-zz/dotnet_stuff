using System;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces.Tickets;

namespace CrmApi.Data.Repositories.Tickets
{
    public class ActionTypeRepository : Repository<ActionType>, IActionTypeRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }
  
        public ActionTypeRepository(CrmApiContext context) : base(context) { }
    }
}
