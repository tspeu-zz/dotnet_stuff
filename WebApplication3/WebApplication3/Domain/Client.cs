using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication3.Domain
{
    public class Client: BaseEntity
    {
         public User user { get; set; }
    }
}
