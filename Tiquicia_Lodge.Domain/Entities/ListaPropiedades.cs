using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class ListaPropiedades
    {
        [Required]
        public int IdLista { get; set; }
        [Required]
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        [JsonIgnore]
        public virtual Propiedad? Propiedad { get; set; } 
        public DateTime? FechaAgregado { get; set; }
    }
}
