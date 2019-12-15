using System;
namespace CrmApi.DTOs.Tickets
{
    public class ActionInputDTO
    {
        public int ActionTypeId { get; set; }
        public int ActionResultId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int WebId { get; set; }
        public int CouponId { get; set; }
        public int CourseId { get; set; }
        public bool ChangedStateTicketId { get; set; }
        public DateTime ProccesedDate { get; set; }
        public bool ChangedUserId { get; set; }
        public bool PosponeTicketTime { get; set; }

    }
}
