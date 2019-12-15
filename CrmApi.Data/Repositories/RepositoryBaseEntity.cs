using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace CrmApi.Data.Repositories
{
    public class RepositoryBaseEntity<TEntity> : IRepositoryBaseEntity<TEntity> where TEntity : BaseEntity
    {
        // varias clases lo usan
        protected readonly DbContext Context;

        public RepositoryBaseEntity(DbContext context)
        {
            Context = context;
        }

        public Task<List<TEntity>> GetAllDelete(bool delete)
        {
            return Context.Set<TEntity>().AsNoTracking().Where(ent => ent.IsDeleted == delete).ToListAsync();
        }

        public Task<List<TEntity>> GetAllAsNoTracking()
        {
            return Context.Set<TEntity>().AsNoTracking().ToListAsync();
        }


        public IQueryable<TEntity> GetByIdAsNoTracking(int id)
        {
            return Context.Set<TEntity>().AsNoTracking().Where(ent => ent.Id == id);
        }
    }
}
