using System;
namespace CrmApi.Data.Domain.Users
{
    public class UserMail: BaseEntityTicket
    {
        public int UserId { get; set; }

        public string MailAddress { get; set; }

        public bool IsDefault { get; set; }
    }
}
