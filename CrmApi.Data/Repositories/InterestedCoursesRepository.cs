using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using CrmApi.Data.Domain;
using CrmApi.Data.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CrmApi.Data.Repositories
{
    public class InterestedCourseRepository: Repository<InterestedCourse>, IInterestedCourseRepository
    {
        public CrmApiContext CRMContext { get { return Context as CrmApiContext; } }

        public InterestedCourseRepository(CrmApiContext context) : base(context) { }

        // return all courses by customer
        public async Task<IEnumerable<InterestedCourse>> GetAllCoursesByCustomerId(int id)
        {
            return await Context.Set<InterestedCourse>().Where(c => c.CustomerId == id).ToListAsync(); 
        }


        // delete one course by customer 
        public Task DeleteInterestCourse(InterestedCourse course)
        {
            course.IsDeleted = true;
            course.ModificationDate = DateTime.Now;
            Update(course);

            return Task.CompletedTask;
        }

        // FIXME no funciona
        public InterestedCourse GetCourseByCustomer(InterestedCourse course)
        {
            return Context.Set<InterestedCourse>().FirstOrDefault(c => c.CourseId == course.CourseId && c.CustomerId == course.CustomerId);
        }

      
    }
}
