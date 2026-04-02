using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IComerciosCercanosService
    {
        Task<IEnumerable<ComerciosCercanos>> GetAllAsync();
        Task<ComerciosCercanos?> GetByIdAsync(int id);
        Task<ComerciosCercanos> CreateAsync(ComerciosCercanos entity);
        Task UpdateAsync(ComerciosCercanos entity);
        Task DeleteAsync(int id);
    }
}
