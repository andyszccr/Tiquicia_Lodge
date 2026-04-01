using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class ReglasCasa {
        [Key]
        public int IdRegla { get; set; }
        [Required, MaxLength(100)]
        public string NombreRegla { get; set; }
        [MaxLength(300)]
        public string? Descripcion { get; set; }
        [MaxLength(50)]
        public string? Icono { get; set; }
    }
}
