using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ICategoriasFAQService
    {
        Task<IEnumerable<CategoriasFAQ>> GetAllAsync();
        Task<CategoriasFAQ?> GetByIdAsync(int id);
        Task<CategoriasFAQ> CreateAsync(CategoriasFAQ entity);
        Task UpdateAsync(CategoriasFAQ entity);
        Task DeleteAsync(int id);
    }
}
