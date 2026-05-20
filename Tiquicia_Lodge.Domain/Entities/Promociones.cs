using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("Promociones")]
    public class Promociones
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdPromocion { get; set; }

        [Required, MaxLength(100)]
        public string NombrePromo { get; set; }

        [MaxLength(300)]
        public string? Descripcion { get; set; }

        [MaxLength(30)]
        public string? TipoPromo { get; set; }

        [Column(TypeName = "decimal(5,2)")]
        public decimal? PorcentajeDescuento { get; set; }

        public DateTime FechaInicio { get; set; }

        public DateTime FechaFin { get; set; }

        public bool? Activo { get; set; }
    }
}
