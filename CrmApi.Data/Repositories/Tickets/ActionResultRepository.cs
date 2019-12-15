using System;
using CrmApi.Data.Domain.Tickets;
using CrmApi.Data.Repositories.Interfaces.Tickets;

namespace CrmApi.Data.Repositories.Tickets
{
    public class ActionResultRepository: Repository<ActionResult>, IActionResultRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public ActionResultRepository(CrmApiContext context) : base(context) { }

    }
}
