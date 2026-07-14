using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PropiedadReglas {
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        [JsonIgnore]
        public virtual Propiedad? Propiedad { get; set; } 
        public int IdRegla { get; set; }
        public bool? EsAplicable { get; set; }
        [MaxLength(200)]
        public string? DetalleEspecifico { get; set; }
    }
}
