using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("MensajesSoporte")]
    public class MensajesSoporte
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdMensaje { get; set; }

        public int IdTicket { get; set; }

        public int IdUsuario { get; set; }

        [Required, MaxLength(1000)]
        public string Mensaje { get; set; }

        public DateTime? FechaEnvio { get; set; }

        [MaxLength(500)]
        public string? AdjuntoURL { get; set; }
    }
}
