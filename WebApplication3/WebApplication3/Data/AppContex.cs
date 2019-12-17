using Microsoft.EntityFrameworkCore;
using WebApplication3.Domain;

namespace WebApplication3.Data
{
    public class AppContextDb : DbContext
    {
        public AppContextDb(DbContextOptions<AppContextDb> options): base(options)
        { }

       public DbSet<User> Users { get; set; }

       public DbSet<Parte> Partes { get; set; }

       public DbSet<Alquiler> Alquileres { get; set; }

       public DbSet<TipoDisfraz> TipoDisfraces { get; set; }

        public DbSet<TipoPago> TipoPago { get; set; }



        public AppContextDb()
        {
        }

 

        /*  protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
          {
                if (!optionsBuilder.IsConfigured)
                {
                    //optionsBuilder.UseSqlServer("Server=192.168.1.216,1433;Database=testCRM_2;User Id=sa;Password=Aa99Dc31Docker;MultipleActiveResultSets=true;");
                   // optionsBuilder.UseSqlServer("Server=DESKTOP-5Q8QQAP\\jm_bchr;Database=testCRM_2;Trusted_Connection=True;MultipleActiveResultSets=true;");
               //   optionsBuilder.UseSqlServer("192.168.0.107,1433;Database=testCRM;User Id=sa;Password=Aa99Dc31Docker;Trusted_Connection=True;MultipleActiveResultSets=true;");
               //   "Default": "Server=192.168.0.107,1433;Database=testCRM;User Id=sa;Password=Aa99Dc31Docker;MultipleActiveResultSets=true"

              }

          }
          */

    }
}
