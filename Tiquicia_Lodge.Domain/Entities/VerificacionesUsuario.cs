using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class VerificacionesUsuario {
        [Key]
        public int IdVerificacion { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;
        [MaxLength(50)]
        public string? TipoVerificacion { get; set; }
        public bool? Verificado { get; set; }
        public DateTime? FechaVerificacion { get; set; }
        [MaxLength(100)]
        public string? MetodoVerificacion { get; set; }
    }
}
