using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication3.Domain
{
    public class Parte: BaseEntity
    {
        public string Name { get; set; }

        public int order { get; set; }
    }
}
