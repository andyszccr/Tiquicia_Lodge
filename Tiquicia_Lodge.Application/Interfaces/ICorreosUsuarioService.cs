using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ICorreosUsuarioService
    {
        Task<IEnumerable<CorreosUsuario>> GetAllAsync();
        Task<CorreosUsuario?> GetByIdAsync(int id);
        Task<CorreosUsuario> CreateAsync(CorreosUsuario entity);
        Task UpdateAsync(CorreosUsuario entity);
        Task DeleteAsync(int id);
    }
}
