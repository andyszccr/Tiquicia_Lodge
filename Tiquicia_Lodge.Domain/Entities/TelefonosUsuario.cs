using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class TelefonosUsuario {
        [Key]
        public int IdTelefono { get; set; }
        [Required]
        public int IdUsuario { get; set; }
        [Required, MaxLength(20)]
        public string Telefono { get; set; }
        [MaxLength(20)]
        public string? TipoTelefono { get; set; }
        public bool? EsPrincipal { get; set; }
        public bool? Activo { get; set; }
    }
}
