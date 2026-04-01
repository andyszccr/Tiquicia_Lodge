using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Models
{
    [Table("Pagos")]
    public class Pago
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdPago { get; set; }
        
        public int IdReserva { get; set; }
        
        [Column(TypeName = "decimal(18,2)")] // Colones (ajustar el valor )
        public decimal Monto_CRC { get; set; }
        
        [Column(TypeName = "decimal(18,2)")] // Dólares
        public decimal? MontoUSD { get; set; }
        
        public DateTime? FechaPago { get; set; }
        
        [Required, MaxLength(30)]
        public string MetodoPago { get; set; }
        
        [MaxLength(20)]
        public string EstadoPago { get; set; }
        
        [Column(TypeName = "varchar(max)")]
        public string ComprobanteURL { get; set; }
        
        public int? TelefonoSINPE { get; set; }
        
        [MaxLength(100)]
        public string ReferenciaBanco { get; set; }
        
        public int IdUsuarioRegistra { get; set; }
    }
}
