using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class ComerciosCercanos {
        [Key]
        public int IdComercio { get; set; }
        [Required, MaxLength(200)]
        public string NombreComercio { get; set; }
        [Required, MaxLength(50)]
        public string TipoComercio { get; set; }
        [MaxLength(20)]
        public string? Telefono { get; set; }
        [MaxLength(300)]
        public string? Direccion { get; set; }
        [MaxLength(200)]
        public string? HorarioAtencion { get; set; }
        public bool? Activo { get; set; }
    }
}
