using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Tiquicia_Lodge.Domain.Entities {
    public class PoliticasCancelacion {
        [Key]
        public int IdPolitica { get; set; }
        [Required, MaxLength(50)]
        public string NombrePolitica { get; set; }
        [MaxLength(300)]
        public string? Descripcion { get; set; }
        [Required]
        [Column(TypeName = "decimal(5,2)")]
        public decimal ReembolsoPorcentaje { get; set; }
        public int? DiasAntelacion { get; set; }
        public bool? Activo { get; set; }
    }
}
