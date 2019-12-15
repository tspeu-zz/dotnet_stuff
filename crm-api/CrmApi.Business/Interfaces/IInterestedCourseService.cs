using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Data.Domain;

namespace CrmApi.Business.Interfaces
{
    public interface IInterestedCourseService
    {
        Task<IEnumerable<InterestedCourse>> GetAllCoursesByCustomer(int id);
        Task DeleteInterestedCourse(InterestedCourse interestedCourse);
        Task<int> AddCourseToCustomer(InterestedCourse interestedCourse);

        // FIXME 
        InterestedCourse GetCourseByCustomer(InterestedCourse interestedCourse);
    }
}
