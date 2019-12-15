using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain;

namespace CrmApi.Data.Repositories.Interfaces
{
    public interface IInterestedCourseRepository : IRepository<InterestedCourse>
    {
        Task<IEnumerable<InterestedCourse>> GetAllCoursesByCustomerId(int id);
        Task DeleteInterestCourse(InterestedCourse course);

        // TODO hacerlo async
        InterestedCourse GetCourseByCustomer(InterestedCourse course);     
    }
}
