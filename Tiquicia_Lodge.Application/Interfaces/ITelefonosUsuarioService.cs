using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ITelefonosUsuarioService
    {
        Task<IEnumerable<TelefonosUsuario>> GetAllAsync();
        Task<TelefonosUsuario?> GetByIdAsync(int id);
        Task<TelefonosUsuario> CreateAsync(TelefonosUsuario entity);
        Task UpdateAsync(TelefonosUsuario entity);
        Task DeleteAsync(int id);
    }
}
