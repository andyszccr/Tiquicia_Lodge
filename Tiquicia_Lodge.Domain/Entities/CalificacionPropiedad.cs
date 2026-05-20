using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("CalificacionesPropiedad")]
    public class CalificacionPropiedad
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdCalificacion { get; set; }
        
        public int IdReserva { get; set; }

        [ForeignKey("IdReserva")]
        public virtual Reserva Reserva { get; set; } = null!;
        public int IdCliente { get; set; }
        public int IdPropiedad { get; set; }

        [ForeignKey("IdPropiedad")]
        public virtual Propiedad Propiedad { get; set; } = null!;
        
        public int Calificacion { get; set; }
        
        [Column(TypeName = "varchar(max)")]
        public string Comentario { get; set; }
        
        public DateTime? Fecha { get; set; }
        public bool? Visible { get; set; }
    }
}
