using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("Reservas")]
    public class Reserva
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdReserva { get; set; }
        
        public int IdCliente { get; set; }
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        [JsonIgnore]
        public virtual Propiedad? Propiedad { get; set; } 
        
        [Required]
        public DateTime FechaEntrada { get; set; }
        
        [Required]
        public DateTime FechaSalida { get; set; }
        
        public int CantidadPersonas { get; set; }
        public int CantidadNoches { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal PrecioPorNoche { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal Subtotal { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal? DescuentoAplicado { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal Comision { get; set; }
        
        [Column(TypeName = "decimal(18,2)")]
        public decimal Total { get; set; }
        
        public int IdEstado { get; set; }

        [ForeignKey("IdEstado")]
        [JsonIgnore]
        public virtual Estado? Estado { get; set; } 
        public DateTime? FechaReserva { get; set; }
        
        [MaxLength(500)]
        public string? NotasCliente { get; set; }
        
        [MaxLength(500)]
        public string? NotasInternas { get; set; }
    }
}
