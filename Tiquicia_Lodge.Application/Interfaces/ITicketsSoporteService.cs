using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ITicketsSoporteService
    {
        Task<IEnumerable<TicketsSoporte>> GetAllAsync();
        Task<TicketsSoporte?> GetByIdAsync(int id);
        Task<TicketsSoporte> CreateAsync(TicketsSoporte entity);
        Task UpdateAsync(TicketsSoporte entity);
        Task DeleteAsync(int id);
    }
}
