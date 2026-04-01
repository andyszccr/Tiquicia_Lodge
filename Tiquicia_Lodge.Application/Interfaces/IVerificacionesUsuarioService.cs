using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IVerificacionesUsuarioService
    {
        Task<IEnumerable<VerificacionesUsuario>> GetAllAsync();
        Task<VerificacionesUsuario?> GetByIdAsync(int id);
        Task<VerificacionesUsuario> CreateAsync(VerificacionesUsuario entity);
        Task UpdateAsync(VerificacionesUsuario entity);
        Task DeleteAsync(int id);
    }
}
