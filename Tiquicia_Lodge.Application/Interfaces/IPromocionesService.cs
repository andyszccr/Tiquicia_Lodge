using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPromocionesService
    {
        Task<IEnumerable<Promociones>> GetAllAsync();
        Task<Promociones?> GetByIdAsync(int id);
        Task<Promociones> CreateAsync(Promociones entity);
        Task UpdateAsync(Promociones entity);
        Task DeleteAsync(int id);
    }
}
