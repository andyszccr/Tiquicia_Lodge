using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class Estado {
        [Key]
        public int IdEstado { get; set; }
        [Required, MaxLength(50)]
        public string NombreEstado { get; set; }
        [MaxLength(50)]
        public string? TipoEntidad { get; set; }
    }
}
