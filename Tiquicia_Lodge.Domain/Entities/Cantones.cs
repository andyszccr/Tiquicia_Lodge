using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class Cantones
    {
        [Key]
        public int IdCanton { get; set; }
        [Required]
        public int IdProvincia { get; set; }

        [ForeignKey("IdProvincia")]
        public virtual Provincias Provincia { get; set; } = null!;
        [Required, MaxLength(100)]
        public string NombreCanton { get; set; } = null!;
        public bool? Activo { get; set; }
    }
}
