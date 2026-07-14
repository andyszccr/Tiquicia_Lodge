using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;
namespace Tiquicia_Lodge.Domain.Entities {
    public class RecuperacionContrasena {
        [Key]
        public int IdSolicitud { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        [JsonIgnore]
        public virtual Usuario? Usuario { get; set; } 
        [Required, MaxLength(255)]
        public string Token { get; set; }
        public DateTime? FechaSolicitud { get; set; }
        [Required]
        public DateTime FechaExpiracion { get; set; }
        public bool? Usada { get; set; }
    }
}
