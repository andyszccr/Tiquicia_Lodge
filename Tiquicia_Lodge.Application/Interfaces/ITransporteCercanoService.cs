using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ITransporteCercanoService
    {
        Task<IEnumerable<TransporteCercano>> GetAllAsync();
        Task<TransporteCercano?> GetByIdAsync(int id);
        Task<TransporteCercano> CreateAsync(TransporteCercano entity);
        Task UpdateAsync(TransporteCercano entity);
        Task DeleteAsync(int id);
    }
}
