using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IZonasTicasService
    {
        Task<IEnumerable<ZonasTicas>> GetAllAsync();
        Task<ZonasTicas?> GetByIdAsync(int id);
        Task<ZonasTicas> CreateAsync(ZonasTicas entity);
        Task UpdateAsync(ZonasTicas entity);
        Task DeleteAsync(int id);
    }
}
