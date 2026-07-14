using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
namespace Tiquicia_Lodge.Domain.Entities {
    public class VerificacionesUsuario {
        [Key]
        public int IdVerificacion { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        [JsonIgnore]
        public virtual Usuario? Usuario { get; set; } 
        [MaxLength(50)]
        public string? TipoVerificacion { get; set; }
        public bool? Verificado { get; set; }
        public DateTime? FechaVerificacion { get; set; }
        [MaxLength(100)]
        public string? MetodoVerificacion { get; set; }
    }
}
