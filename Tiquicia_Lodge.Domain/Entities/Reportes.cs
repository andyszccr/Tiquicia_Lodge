using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("Reportes")]
    public class Reportes
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdReporte { get; set; }

        public int IdUsuarioReporta { get; set; }

        public int? IdUsuarioReportado { get; set; }

        public int? IdPropiedadReportada { get; set; }

        public int? IdReservaRelacionada { get; set; }

        [Required, MaxLength(100)]
        public string Motivo { get; set; }

        [Required, MaxLength(500)]
        public string Descripcion { get; set; }

        public DateTime? FechaReporte { get; set; }

        public int IdEstado { get; set; }

        [ForeignKey("IdEstado")]
        [JsonIgnore]
        public virtual Estado? Estado { get; set; } 

        [MaxLength(500)]
        public string? Resolucion { get; set; }

        public DateTime? FechaResolucion { get; set; }

        public int? ResueltoPor { get; set; }
    }
}
