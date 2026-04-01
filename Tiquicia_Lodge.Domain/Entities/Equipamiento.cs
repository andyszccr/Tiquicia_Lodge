using System.ComponentModel.DataAnnotations;
namespace Tiquicia_Lodge.Domain.Entities {
    public class Equipamiento {
        [Key]
        public int IdEquipamiento { get; set; }
        [Required]
        public int IdCategoria { get; set; }
        [Required, MaxLength(100)]
        public string NombreEquipamiento { get; set; }
        [MaxLength(200)]
        public string? Descripcion { get; set; }
        [MaxLength(50)]
        public string? Icono { get; set; }
        public bool? Activo { get; set; }
    }
}
