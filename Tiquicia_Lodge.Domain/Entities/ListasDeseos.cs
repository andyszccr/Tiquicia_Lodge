using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class ListasDeseos
    {
        [Key]
        public int IdLista { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        [JsonIgnore]
        public virtual Usuario? Usuario { get; set; } 
        [MaxLength(100)]
        public string? NombreLista { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public bool? Privada { get; set; }
    }
}
