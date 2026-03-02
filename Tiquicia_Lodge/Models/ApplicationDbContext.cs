using Microsoft.EntityFrameworkCore;

namespace Tiquicia_Lodge.Models
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        // Agrega aquí tus DbSets, por ejemplo
        // public DbSet<Reserva> Reservas { get; set; }
    }
}
