using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface INacionalidadesService
    {
        Task<IEnumerable<Nacionalidades>> GetAllAsync();
        Task<Nacionalidades?> GetByIdAsync(int id);
        Task<Nacionalidades> CreateAsync(Nacionalidades entity);
        Task UpdateAsync(Nacionalidades entity);
        Task DeleteAsync(int id);
    }
}
