using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IEstadoService
    {
        Task<IEnumerable<Estado>> GetAllAsync();
        Task<Estado?> GetByIdAsync(int id);
        Task<Estado> CreateAsync(Estado entity);
        Task UpdateAsync(Estado entity);
        Task DeleteAsync(int id);
    }
}
