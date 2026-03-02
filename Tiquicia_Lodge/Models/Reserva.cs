using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Models
{
    [Table("Reservas")]
    public class Reserva
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdReserva { get; set; }
        
        public int IdCliente { get; set; }
        public int IdPropiedad { get; set; }
        
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
        public DateTime? FechaReserva { get; set; }
        
        [MaxLength(500)]
        public string NotasCliente { get; set; }
        
        [MaxLength(500)]
        public string NotasInternas { get; set; }
    }
}
