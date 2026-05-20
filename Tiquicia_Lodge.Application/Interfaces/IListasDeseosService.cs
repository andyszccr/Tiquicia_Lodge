using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IListasDeseosService
    {
        Task<IEnumerable<ListasDeseos>> GetAllAsync();
        Task<ListasDeseos?> GetByIdAsync(int id);
        Task<ListasDeseos> CreateAsync(ListasDeseos entity);
        Task UpdateAsync(ListasDeseos entity);
        Task DeleteAsync(int id);
    }
}
