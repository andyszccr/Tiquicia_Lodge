using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class Roles {
        [Key]
        public int IdRol { get; set; }
        [Required, MaxLength(50)]
        public string NombreRol { get; set; }
        [MaxLength(200)]
        public string? Descripcion { get; set; }
    }
}
