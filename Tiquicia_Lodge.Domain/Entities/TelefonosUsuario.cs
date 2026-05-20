using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class TelefonosUsuario {
        [Key]
        public int IdTelefono { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;
        [Required, MaxLength(20)]
        public string Telefono { get; set; }
        [MaxLength(20)]
        public string? TipoTelefono { get; set; }
        public bool? EsPrincipal { get; set; }
        public bool? Activo { get; set; }
    }
}
