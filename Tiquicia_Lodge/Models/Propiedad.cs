using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Models
{
    [Table("Propiedades")]
    public class Propiedad
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdPropiedad { get; set; }
        
        public int IdProveedor { get; set; }
        public int IdTipoAlojamiento { get; set; }
        public int IdZona { get; set; }
        public int? IdDistrito { get; set; }
        
        [Required, MaxLength(250)]
        public string NombrePropiedad { get; set; }
        
        [MaxLength(500)]
        public string TituloPromocional { get; set; }
        
        [Required, MaxLength(2000)]
        public string DescripcionLarga { get; set; }
        
        [MaxLength(300)]
        public string DescripcionCorta { get; set; }
        
        [Required, MaxLength(300)]
        public string UbicacionDetallada { get; set; }
        
        public int CantidadHabitaciones { get; set; }
        public int CantidadCamas { get; set; }
        public int CapacidadMaxima { get; set; }
        public int CantidadBanios { get; set; }
        public int? AreaMetrosCuadrados { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal MontoXNoche { get; set; }
        
        public int Moneda { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal? DepositoGarantia { get; set; }
        
        public int IdEstado { get; set; }
        public bool? Verificado { get; set; }
        public DateTime? FechaRegistro { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public int? VecesVisto { get; set; }
        
        [Column(TypeName = "decimal(3,2)")]
        public decimal? RatingPromedio { get; set; }
        
        public int? TotalResenas { get; set; }
    }
}
