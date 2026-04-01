using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IRecuperacionContrasenaService
    {
        Task<IEnumerable<RecuperacionContrasena>> GetAllAsync();
        Task<RecuperacionContrasena?> GetByIdAsync(int id);
        Task<RecuperacionContrasena> CreateAsync(RecuperacionContrasena entity);
        Task UpdateAsync(RecuperacionContrasena entity);
        Task DeleteAsync(int id);
    }
}
