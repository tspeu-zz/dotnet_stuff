using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace CrmApi.Data.Repositories.Interfaces
{

    public interface IRepository<TEntity> where TEntity : class
    {

        Task<TEntity> GetById(int id);
        Task<IEnumerable<TEntity>> GetAll();
        Task<IEnumerable<TEntity>> GetAllAsNoTracking();

        Task<IEnumerable<TEntity>> GetAllById(int id);

        Task<IEnumerable<TEntity>> FindRepositoryAsync(Expression<Func<TEntity, bool>> predicade);

        Task<TEntity> SingleOrDefaultRepository(Expression<Func<TEntity, bool>> predicate);

        IEnumerable<TEntity> FindRepository(Expression<Func<TEntity, bool>> predicade);

        void Remove (TEntity entity);
        void RemoveRange (IAsyncEnumerator<TEntity> entities);

        void Add(TEntity entity);
        void AddRange(IAsyncEnumerator<TEntity> entities);

        TEntity Create(TEntity entity);

        void Update(TEntity entity);

        /*
        Task<int> CountAl();
        Task<int> CountWhere(Expression<Func<TEntity, bool>> predicate);
        */

        //
    }
}
