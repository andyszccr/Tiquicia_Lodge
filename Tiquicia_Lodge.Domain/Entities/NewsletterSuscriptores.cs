using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("NewsletterSuscriptores")]
    public class NewsletterSuscriptores
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdSuscriptor { get; set; }

        [Required, MaxLength(100), EmailAddress]
        public string Correo { get; set; }

        [MaxLength(100)]
        public string? Nombre { get; set; }

        public DateTime? FechaSuscripcion { get; set; }

        public bool? Activo { get; set; }

        [MaxLength(100)]
        public string? TokenCancelacion { get; set; }
    }
}
