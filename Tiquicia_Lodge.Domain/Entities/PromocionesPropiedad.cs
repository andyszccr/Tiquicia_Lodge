using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("PromocionesPropiedad")]
    public class PromocionesPropiedad
    {
        [Key, Column(Order = 0)]
        public int IdPromocion { get; set; }

        [ForeignKey("IdPromocion")]
        [JsonIgnore]
        public virtual Promociones? Promocione { get; set; } 

        [Key, Column(Order = 1)]
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        [JsonIgnore]
        public virtual Propiedad? Propiedad { get; set; } 
    }
}
