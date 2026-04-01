using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class FotosPropiedad {
        [Key]
        public int IdFoto { get; set; }
        [Required]
        public int IdPropiedad { get; set; }
        [Required, MaxLength(500)]
        public string UrlFoto { get; set; }
        [MaxLength(200)]
        public string? Titulo { get; set; }
        [MaxLength(300)]
        public string? Descripcion { get; set; }
        public int? Orden { get; set; }
        public bool? EsPrincipal { get; set; }
        public DateTime? FechaSubida { get; set; }
        public bool? Activo { get; set; }
    }
}
