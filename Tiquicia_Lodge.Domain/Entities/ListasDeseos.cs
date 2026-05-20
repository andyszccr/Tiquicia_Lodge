using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class ListasDeseos
    {
        [Key]
        public int IdLista { get; set; }
        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;
        [MaxLength(100)]
        public string? NombreLista { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public bool? Privada { get; set; }
    }
}
