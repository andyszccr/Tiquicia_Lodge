using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadReglas {
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        public virtual Propiedad Propiedad { get; set; } = null!;
        public int IdRegla { get; set; }
        public bool? EsAplicable { get; set; }
        [MaxLength(200)]
        public string? DetalleEspecifico { get; set; }
    }
}
