using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class Cantones
    {
        [Key]
        public int IdCanton { get; set; }
        [Required]
        public int IdProvincia { get; set; }

        [ForeignKey("IdProvincia")]
        [JsonIgnore]
        public virtual Provincias? Provincia { get; set; } 
        [Required, MaxLength(100)]
        public string NombreCanton { get; set; } = null!;
        public bool? Activo { get; set; }
    }
}
