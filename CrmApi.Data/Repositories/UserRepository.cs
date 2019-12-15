using System;
using CrmApi.Data.Domain.Users;
using CrmApi.Data.Repositories.Interfaces;

namespace CrmApi.Data.Repositories
{
    public class UserRepository: Repository<User>, IUserRepository
    {
        public CrmApiContext CRMContext
        {
            get { return Context as CrmApiContext; }
        }

        public UserRepository(CrmApiContext context) : base(context) { }
        
    }
}
