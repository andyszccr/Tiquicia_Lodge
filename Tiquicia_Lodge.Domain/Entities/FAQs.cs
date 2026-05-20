using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("FAQs")]
    public class FAQs
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdFAQ { get; set; }

        public int IdCategoriaFAQ { get; set; }

        [Required, MaxLength(300)]
        public string Pregunta { get; set; }

        [Required, MaxLength(1000)]
        public string Respuesta { get; set; }

        public int? Orden { get; set; }

        public int? VecesVista { get; set; }

        public bool? Activo { get; set; }

        public int CreadoPor { get; set; }

        public DateTime? FechaCreacion { get; set; }

        public int? ModificadoPor { get; set; }

        public DateTime? FechaModificacion { get; set; }
    }
}
