using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
namespace Tiquicia_Lodge.Domain.Entities {
    public class TelefonosUsuario {
        [Key]
        public int IdTelefono { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        [JsonIgnore]
        public virtual Usuario? Usuario { get; set; } 
        [Required, MaxLength(20)]
        public string Telefono { get; set; }
        [MaxLength(20)]
        public string? TipoTelefono { get; set; }
        public bool? EsPrincipal { get; set; }
        public bool? Activo { get; set; }
    }
}
