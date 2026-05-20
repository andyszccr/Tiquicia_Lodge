using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class CorreosUsuario {
        [Key]
        public int IdCorreo { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;
        [Required, MaxLength(100)]
        public string Correo { get; set; }
        public bool? EsPrincipal { get; set; }
        public bool? Activo { get; set; }
    }
}
