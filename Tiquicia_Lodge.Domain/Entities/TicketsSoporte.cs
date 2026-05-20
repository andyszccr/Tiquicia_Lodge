using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("TicketsSoporte")]
    public class TicketsSoporte
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdTicket { get; set; }

        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuario Usuario { get; set; } = null!;

        [Required, MaxLength(200)]
        public string Asunto { get; set; }

        [Required, MaxLength(1000)]
        public string Descripcion { get; set; }

        public int IdEstado { get; set; }

        [ForeignKey("IdEstado")]
        public virtual Estado Estado { get; set; } = null!;

        [MaxLength(20)]
        public string? Prioridad { get; set; }

        public DateTime? FechaCreacion { get; set; }

        public DateTime? FechaCierre { get; set; }

        public int? IdAgenteAsignado { get; set; }
    }
}
