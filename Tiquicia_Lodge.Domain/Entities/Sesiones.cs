using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class Sesiones {
        [Key]
        public int IdSesion { get; set; }
        [Required]
        public int IdUsuario { get; set; }
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
