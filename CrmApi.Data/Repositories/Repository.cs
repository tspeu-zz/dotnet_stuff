using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CrmApi.Data.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        
        // varias clases lo usan
        protected readonly DbContext Context;

        public Repository(DbContext context)
        {
            Context = context;
        }

#region tested OK
        public async Task<TEntity> GetById (int id)
        {
            return await Context.Set<TEntity>().FindAsync(id);
        }

        public async Task<IEnumerable<TEntity>> GetAll()
        {
            return await Context.Set<TEntity>().ToListAsync();      
        }

        public async Task<IEnumerable<TEntity>> GetAllAsNoTracking()
        {
            return await Context.Set<TEntity>().AsNoTracking().ToListAsync();      
        }

        public void Add(TEntity entity)
        {
            Context.Set<TEntity>().Add(entity);
        }

        // TODO TEST
        public virtual TEntity Create(TEntity entity)
        {
            var db = Context.Set<TEntity>().Add(entity);
            return db.Entity;
        }


        public void Update(TEntity entity)
        {
            Context.Entry(entity).State = EntityState.Modified;
            //Context.Set<TEntity>().Update(entity);
        }

        public IEnumerable<TEntity> FindRepository(Expression<Func<TEntity, bool>> predicade)
        {
            return Context.Set<TEntity>().Where(predicade);
        }

        public async Task<IEnumerable<TEntity>> FindRepositoryAsync(Expression<Func<TEntity, bool>> predicade)
        {
            
            return await (Task<IEnumerable<TEntity>>)Context.Set<TEntity>().Where(predicade);
        }

        // generico para mostrar un solo item
        public async Task<TEntity> SingleOrDefaultRepository(Expression<Func<TEntity, bool>> predicate)
        {
            return await Context.Set<TEntity>().SingleOrDefaultAsync(predicate);
        }
#endregion  tested OK// 
        
        // no tested yet
        public async Task<IEnumerable<TEntity>> GetAllById(int id)
        {
            return (IEnumerable<TEntity>)await Context.Set<TEntity>().FindAsync(id);
        }

        public void Remove(TEntity entity)
        {
            Context.Set<TEntity>().Remove(entity);
        }

        public void RemoveRange(IAsyncEnumerator<TEntity> entities)
        {
            Context.Set<TEntity>().RemoveRange((TEntity)entities);
        }

        public void AddRange(IAsyncEnumerator<TEntity> entities)
        {
            Context.Set<TEntity>().AddRange((TEntity)entities);
        }




        // no tested yet
    }
}