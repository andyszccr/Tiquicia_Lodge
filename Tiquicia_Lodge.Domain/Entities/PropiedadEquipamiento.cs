using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadEquipamiento {
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        [JsonIgnore]
        public virtual Propiedad? Propiedad { get; set; } 
        public int IdEquipamiento { get; set; }

        [ForeignKey("IdEquipamiento")]
        [JsonIgnore]
        public virtual Equipamiento? Equipamiento { get; set; } 
        public int? Cantidad { get; set; }
        [MaxLength(200)]
        public string? DescripcionAdicional { get; set; }
    }
}
