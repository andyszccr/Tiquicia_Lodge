using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    public class ListaPropiedades
    {
        [Required]
        public int IdLista { get; set; }
        [Required]
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        public virtual Propiedad Propiedad { get; set; } = null!;
        public DateTime? FechaAgregado { get; set; }
    }
}
