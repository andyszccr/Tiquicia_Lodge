using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
// Se usará Fluent API para la llave primaria compuesta
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadServicios {
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        public virtual Propiedad Propiedad { get; set; } = null!;
        public int IdServicio { get; set; }
        [MaxLength(200)]
        public string? DescripcionAdicional { get; set; }
        public bool? IncluidoEnPrecio { get; set; }
    }
}
