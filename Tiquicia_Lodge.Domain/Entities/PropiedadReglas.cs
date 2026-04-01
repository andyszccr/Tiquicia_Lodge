using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadReglas {
        public int IdPropiedad { get; set; }
        public int IdRegla { get; set; }
        public bool? EsAplicable { get; set; }
        [MaxLength(200)]
        public string? DetalleEspecifico { get; set; }
    }
}
