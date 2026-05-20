using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class Distritos
    {
        [Key]
        public int IdDistrito { get; set; }
        [Required]
        public int IdCanton { get; set; }

        [ForeignKey("IdCanton")]
        public virtual Cantones Cantone { get; set; } = null!;
        [Required, MaxLength(100)]
        public string NombreDistrito { get; set; } = null!;
        [MaxLength(10)]
        public string? CodigoPostal { get; set; }
        public bool? Activo { get; set; }
    }
}
