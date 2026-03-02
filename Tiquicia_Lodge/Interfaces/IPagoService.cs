using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Interfaces
{
    public interface IPagoService
    {
        Task<IEnumerable<Pago>> GetAllAsync();
        Task<Pago> GetByIdAsync(int id);
        Task<Pago> CreateAsync(Pago pago);
        Task UpdateAsync(Pago pago);
        Task DeleteAsync(int id);
    }
}
