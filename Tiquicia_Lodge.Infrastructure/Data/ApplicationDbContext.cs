using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Infrastructure.Data
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

        public DbSet<Estado> Estados { get; set; }
        public DbSet<FotosPropiedad> FotosPropiedad { get; set; }
        public DbSet<PropiedadServicios> PropiedadServicios { get; set; }
        public DbSet<Provincias> Provincias { get; set; }
        public DbSet<Roles> Roles { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            
            modelBuilder.Entity<PropiedadServicios>()
                .HasKey(ps => new { ps.IdPropiedad, ps.IdServicio });
        }
    }
}
