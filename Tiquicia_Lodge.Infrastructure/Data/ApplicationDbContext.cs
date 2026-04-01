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

        public DbSet<Sesiones> Sesiones { get; set; }
        public DbSet<RecuperacionContrasena> RecuperacionesContrasena { get; set; }
        public DbSet<TelefonosUsuario> TelefonosUsuario { get; set; }
        public DbSet<CorreosUsuario> CorreosUsuario { get; set; }
        public DbSet<VerificacionesUsuario> VerificacionesUsuario { get; set; }

        // Módulo de Entorno Inmobiliario (Catálogo Extendido)
        public DbSet<Equipamiento> Equipamiento { get; set; }
        public DbSet<PropiedadEquipamiento> PropiedadEquipamiento { get; set; }
        public DbSet<ReglasCasa> ReglasCasa { get; set; }
        public DbSet<PropiedadReglas> PropiedadReglas { get; set; }
        public DbSet<HorariosCheckInOut> HorariosCheckInOut { get; set; }
        public DbSet<PoliticasCancelacion> PoliticasCancelacion { get; set; }
        public DbSet<ComerciosCercanos> ComerciosCercanos { get; set; }
        public DbSet<TransporteCercano> TransporteCercano { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            
            modelBuilder.Entity<PropiedadServicios>()
                .HasKey(ps => new { ps.IdPropiedad, ps.IdServicio });

            modelBuilder.Entity<PropiedadEquipamiento>()
                .HasKey(pe => new { pe.IdPropiedad, pe.IdEquipamiento });

            modelBuilder.Entity<PropiedadReglas>()
                .HasKey(pr => new { pr.IdPropiedad, pr.IdRegla });
        }
    }
}
