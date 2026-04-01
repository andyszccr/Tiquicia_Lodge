using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class TransporteCercano {
        [Key]
        public int IdTransporte { get; set; }
        [Required, MaxLength(50)]
        public string TipoTransporte { get; set; }
        [Required, MaxLength(200)]
        public string Nombre { get; set; }
        [MaxLength(100)]
        public string? DistanciaReferencia { get; set; }
        [MaxLength(20)]
        public string? Telefono { get; set; }
    }
}
