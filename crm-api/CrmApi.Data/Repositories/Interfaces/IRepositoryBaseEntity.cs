using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrmApi.Data.Domain;

namespace CrmApi.Data.Repositories.Interfaces
{
    public interface IRepositoryBaseEntity<TEntity> where TEntity : BaseEntity
    {

        IQueryable<TEntity> GetByIdAsNoTracking(int id);

        Task<List<TEntity>> GetAllAsNoTracking();

        Task<List<TEntity>> GetAllDelete(bool delete);

    }
}
