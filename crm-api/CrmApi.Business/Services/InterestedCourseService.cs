using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CrmApi.Business.Interfaces;
using CrmApi.Data;
using CrmApi.Data.Domain;
using System.Linq;


namespace CrmApi.Business.Services
{
    public class InterestedCourseService: IInterestedCourseService
    {
        private UnitOfWork _unitOfWork;

        public InterestedCourseService()
        {
            _unitOfWork = new UnitOfWork();
        }

        public Task<IEnumerable<InterestedCourse>> GetAllCoursesByCustomer(int id)
        {
            return _unitOfWork.InterestedCourseRepository.GetAllCoursesByCustomerId(id);
        }

        //TODO  FIXME get un curso por Customer
        public  InterestedCourse GetCourseByCustomer(InterestedCourse course)
        {
            var List = _unitOfWork.InterestedCourseRepository.FindRepository(c => c.CustomerId == course.CustomerId).ToList();

            InterestedCourse customerCourse = List.Find(c => c.CourseId == course.CourseId);
            return customerCourse;
        }

        // ADD course 
        public async Task<int> AddCourseToCustomer(InterestedCourse data)
        {
            int result = 0;
            if (data != null)
            {
                var course = new InterestedCourse
                {
                    CustomerId = data.CustomerId,
                    CourseId = data.CourseId      
                };

                _unitOfWork.InterestedCourseRepository.Add(data);
                result = await _unitOfWork.CompleteAsync();
                return result;
            }     
            return result;
        }

        // TODO delete course from Customer 
        public async Task DeleteInterestedCourse(InterestedCourse interestedCourse)
        {
            var course = GetCourseByCustomer(interestedCourse);

            if (course != null)
            {
                await _unitOfWork.InterestedCourseRepository.DeleteInterestCourse(course);
                await _unitOfWork.CompleteAsync();
            }
            else
            {
                throw new Exception("Unable to find the Course on DeleteInterestedCourse service!");

            }
        }


    }
}
