
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication3.Domain
{
    public class User: BaseEntity
    {
       public string Name { get; set; }
       public string LastName { get; set; }

       public List<Parte> partes { get; set; }
        
    }
}
