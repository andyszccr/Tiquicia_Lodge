using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ISesionesService
    {
        Task<IEnumerable<Sesiones>> GetAllAsync();
        Task<Sesiones?> GetByIdAsync(int id);
        Task<Sesiones> CreateAsync(Sesiones entity);
        Task UpdateAsync(Sesiones entity);
        Task DeleteAsync(int id);
    }
}
