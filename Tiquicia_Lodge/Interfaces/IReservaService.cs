using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Interfaces
{
    public interface IReservaService
    {
        Task<IEnumerable<Reserva>> GetAllAsync();
        Task<Reserva> GetByIdAsync(int id);
        Task<Reserva> CreateAsync(Reserva reserva);
        Task UpdateAsync(Reserva reserva);
        Task DeleteAsync(int id);
    }
}
