using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class RecuperacionContrasena {
        [Key]
        public int IdSolicitud { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;
        [Required, MaxLength(255)]
        public string Token { get; set; }
        public DateTime? FechaSolicitud { get; set; }
        [Required]
        public DateTime FechaExpiracion { get; set; }
        public bool? Usada { get; set; }
    }
}
