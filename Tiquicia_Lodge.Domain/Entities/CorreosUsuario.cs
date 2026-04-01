using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class CorreosUsuario {
        [Key]
        public int IdCorreo { get; set; }
        [Required]
        public int IdUsuario { get; set; }
        [Required, MaxLength(100)]
        public string Correo { get; set; }
        public bool? EsPrincipal { get; set; }
        public bool? Activo { get; set; }
    }
}
