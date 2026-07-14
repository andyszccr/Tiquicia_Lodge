using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class Distritos
    {
        [Key]
        public int IdDistrito { get; set; }
        [Required]
        public int IdCanton { get; set; }

        [ForeignKey("IdCanton")]
        [JsonIgnore]
        public virtual Cantones? Cantone { get; set; } 
        [Required, MaxLength(100)]
        public string NombreDistrito { get; set; } = null!;
        [MaxLength(10)]
        public string? CodigoPostal { get; set; }
        public bool? Activo { get; set; }
    }
}
