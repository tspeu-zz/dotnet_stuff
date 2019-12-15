using System;
using System.Collections.Generic;

namespace CrmApi.Data.Domain.Tickets
{
    public class Action: BaseEntity
    {
        public int TicketId { get; set; }

        public int ActionTypeId { get; set; }

        public int ActionResultId{ get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }

        public string Tittle { get; set; }
        
        public string Description { get; set; }

        // ?¿
        public int WebId { get; set; }

        // ?¿
        public int CouponId { get; set; }

        // Lista de id
        public int CourseId { get; set; }
        //[NotMapped]
        //public int[] CoursesId { get; set; }      

        // ?¿
        public string Origen { get; set; }

        public bool ChangedStateTicketId { get; set; }

        public DateTime ProccesedDate { get; set; }

        // ?¿
        public bool ChangedUserId { get; set; }

        public int UserId { get; set; }

        // ?¿
        public bool PosponeTicketTime { get; set; }

        //
        public Ticket Ticket { get; set; }

    }
}
