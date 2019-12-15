using System;
using System.Net;

namespace CrmApi.Business.ExceptionDtos
{
    public class CustomException : Exception
    {
        public int Code { get; set; }

        public HttpStatusCode HttpStatusCode { get; set; }

        public CustomException (int Code, string message,
            HttpStatusCode httpStatusCode = HttpStatusCode.BadRequest) : base(message)
        {
            HttpStatusCode = httpStatusCode;
        }
    }
}
