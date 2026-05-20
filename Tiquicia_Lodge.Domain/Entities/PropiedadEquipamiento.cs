using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadEquipamiento {
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        public virtual Propiedad Propiedad { get; set; } = null!;
        public int IdEquipamiento { get; set; }

        [ForeignKey("IdEquipamiento")]
        public virtual Equipamiento Equipamiento { get; set; } = null!;
        public int? Cantidad { get; set; }
        [MaxLength(200)]
        public string? DescripcionAdicional { get; set; }
    }
}
