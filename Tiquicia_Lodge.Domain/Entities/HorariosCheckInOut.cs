using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
namespace Tiquicia_Lodge.Domain.Entities {
    public class HorariosCheckInOut {
        [Key]
        public int IdHorario { get; set; }
        [Required]
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        [JsonIgnore]
        public virtual Propiedad? Propiedad { get; set; } 
        [MaxLength(10)]
        public string? TipoHorario { get; set; }
        [Required]
        public TimeSpan HoraDesde { get; set; }
        public TimeSpan? HoraHasta { get; set; }
        public bool? Flexible { get; set; }
        [MaxLength(200)]
        public string? Notas { get; set; }
    }
}
