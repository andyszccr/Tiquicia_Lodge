using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Models
{
    [Table("CalificacionesPropiedad")]
    public class CalificacionPropiedad
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdCalificacion { get; set; }
        
        public int IdReserva { get; set; }
        public int IdCliente { get; set; }
        public int IdPropiedad { get; set; }
        
        public int Calificacion { get; set; }
        
        [Column(TypeName = "varchar(max)")]
        public string Comentario { get; set; }
        
        public DateTime? Fecha { get; set; }
        public bool? Visible { get; set; }
    }
}
