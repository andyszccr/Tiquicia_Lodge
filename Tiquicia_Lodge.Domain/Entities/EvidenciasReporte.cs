using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("EvidenciasReporte")]
    public class EvidenciasReporte
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdEvidencia { get; set; }

        public int IdReporte { get; set; }

        [MaxLength(30)]
        public string? TipoEvidencia { get; set; }

        [Required, MaxLength(500)]
        public string UrlArchivo { get; set; }

        [MaxLength(200)]
        public string? Descripcion { get; set; }

        public DateTime? FechaSubida { get; set; }
    }
}
