using System;
using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class Provincias {
        [Key]
        public int IdProvincia { get; set; }
        [Required, MaxLength(50)]
        public string NombreProvincia { get; set; }
        public bool? Activo { get; set; }
    }
}
