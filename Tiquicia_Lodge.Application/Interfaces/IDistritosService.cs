using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IDistritosService
    {
        Task<IEnumerable<Distritos>> GetAllAsync();
        Task<Distritos?> GetByIdAsync(int id);
        Task<Distritos> CreateAsync(Distritos entity);
        Task UpdateAsync(Distritos entity);
        Task DeleteAsync(int id);
    }
}
