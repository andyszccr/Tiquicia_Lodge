using System;
using System.ComponentModel.DataAnnotations;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class Nacionalidades
    {
        [Key]
        public int IdNacionalidad { get; set; }
        [Required, MaxLength(100)]
        public string Nacionalidad { get; set; } = null!;
        [MaxLength(2)]
        public string? CodigoISO { get; set; }
        public bool? Activo { get; set; }
    }
}
