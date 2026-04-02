using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Tiquicia_Lodge.Domain.Entities
{
    [Table("Usuarios")]
    public class Usuario
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdUsuario { get; set; }
        
        [Required, MaxLength(100)]
        public string Nombre { get; set; }
        
        [Required, MaxLength(100)]
        public string PrimerApellido { get; set; }
        
        [MaxLength(100)]
        public string? SegundoApellido { get; set; }
        
        [Required, MaxLength(100), EmailAddress]
        public string Correo { get; set; }
        
        [Required, MaxLength(255)]
        public string Contrasena { get; set; }
        
        public int IdNacionalidad { get; set; }
        
        [Required, MaxLength(300)]
        public string Direccion { get; set; }
        
        public int? IdDistrito { get; set; }
        public DateTime? FechaNacimiento { get; set; }
        
        public string? Genero { get; set; }
        public int IdRol { get; set; }
        public int IdEstado { get; set; }
        public DateTime? FechaRegistro { get; set; }
        public DateTime? UltimoAcceso { get; set; }
        public bool? EmailConfirmado { get; set; }
        public bool? TelefonoConfirmado { get; set; }
        
        [Column(TypeName = "varchar(max)")]
        public string? FotoPerfil { get; set; }
        
        [MaxLength(500)]
        public string? NotasInternas { get; set; }
    }
}
