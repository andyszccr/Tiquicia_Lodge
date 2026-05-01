using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("PromocionesPropiedad")]
    public class PromocionesPropiedad
    {
        [Key, Column(Order = 0)]
        public int IdPromocion { get; set; }

        [Key, Column(Order = 1)]
        public int IdPropiedad { get; set; }
    }
}
