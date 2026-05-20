using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ICantonesService
    {
        Task<IEnumerable<Cantones>> GetAllAsync();
        Task<Cantones?> GetByIdAsync(int id);
        Task<Cantones> CreateAsync(Cantones entity);
        Task UpdateAsync(Cantones entity);
        Task DeleteAsync(int id);
    }
}
