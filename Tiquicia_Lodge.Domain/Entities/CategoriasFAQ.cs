using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("CategoriasFAQ")]
    public class CategoriasFAQ
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdCategoriaFAQ { get; set; }

        [Required, MaxLength(50)]
        public string NombreCategoria { get; set; }

        [MaxLength(200)]
        public string? Descripcion { get; set; }

        public int? Orden { get; set; }

        public bool? Activo { get; set; }
    }
}
