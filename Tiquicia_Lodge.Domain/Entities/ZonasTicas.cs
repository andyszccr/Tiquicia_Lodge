using System;
using System.ComponentModel.DataAnnotations;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class ZonasTicas
    {
        [Key]
        public int IdZona { get; set; }
        [Required, MaxLength(100)]
        public string NombreZona { get; set; } = null!;
        [MaxLength(255)]
        public string? Descripcion { get; set; }
        public bool? Activo { get; set; }
    }
}
