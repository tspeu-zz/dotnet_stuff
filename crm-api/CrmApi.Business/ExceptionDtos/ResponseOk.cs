using System;
using CrmApi.Data.Domain;

namespace CrmApi.Business.ExceptionDtos
{
    public class ResponseOk<T>
    {
        public T Data { get; set; }

        public bool Success { get; set; } = true;

        
    }
}
