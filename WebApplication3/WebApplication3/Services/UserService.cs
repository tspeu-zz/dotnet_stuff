using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3.Data;
using WebApplication3.Domain;
using WebApplication3.Services.Interfaces;

namespace WebApplication3.Services
{
    public class UserService : IUserService
    {
        private readonly AppContextDb _appContext;

        public UserService(AppContextDb appContext)
        {
            _appContext = appContext;
        }

        public async Task<int> createUser(User user)
        {

            int res = 0;
            if (user != null)
            {

                _appContext.Add(user);
                //res = await _appContext.SaveChangesAsync();
                res = await Save();
            }

            return res;

        }


        public async Task<User> updateUser(User user)
        {
            // _appContext.Entry(User).State = EntityState.Modified;
            if (user != null)
            {
                _appContext.Update(user);
                await Save();

            }
            return user;
        }


        public async Task Delete(User user)
        {
            user.IsDelete = true;
            user.Modification = DateTime.Now;
            _appContext.Update(user);
            await Save();

        }


        public async Task<IEnumerable<User>> GetAll()
        {
            return await _appContext.Users.ToListAsync();

        }

        public async Task<User> getUserById(int id)
        {
            var res = await _appContext.Users.FirstOrDefaultAsync(a => a.Id == id);
            return res;
        }

        private async Task<int> Save()
        {
            try
            {
                return await _appContext.SaveChangesAsync();
            } // todo
            catch (Exception ex)
            {
                throw new Exception("Error to save data to de Db!", ex);
            }

        }

    }
}

