using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class Sesiones {
        [Key]
        public int IdSesion { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;
        [Required, MaxLength(500)]
        public string Token { get; set; }
        public DateTime? FechaInicio { get; set; }
        [Required]
        public DateTime FechaExpiracion { get; set; }
        [MaxLength(45)]
        public string? IPAddress { get; set; }
        [MaxLength(500)]
        public string? UserAgent { get; set; }
        public bool? Activa { get; set; }
    }
}
