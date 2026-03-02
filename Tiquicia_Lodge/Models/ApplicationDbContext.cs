using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Models
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Propiedad> Propiedades { get; set; }
        public DbSet<Reserva> Reservas { get; set; }
        public DbSet<Pago> Pagos { get; set; }
        public DbSet<CalificacionPropiedad> CalificacionesPropiedad { get; set; }
    }
}
