using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IReglasCasaService
    {
        Task<IEnumerable<ReglasCasa>> GetAllAsync();
        Task<ReglasCasa?> GetByIdAsync(int id);
        Task<ReglasCasa> CreateAsync(ReglasCasa entity);
        Task UpdateAsync(ReglasCasa entity);
        Task DeleteAsync(int id);
    }
}
