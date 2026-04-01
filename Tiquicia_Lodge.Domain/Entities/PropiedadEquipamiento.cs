using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadEquipamiento {
        public int IdPropiedad { get; set; }
        public int IdEquipamiento { get; set; }
        public int? Cantidad { get; set; }
        [MaxLength(200)]
        public string? DescripcionAdicional { get; set; }
    }
}
