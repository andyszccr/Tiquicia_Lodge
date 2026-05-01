using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IMensajesSoporteService
    {
        Task<IEnumerable<MensajesSoporte>> GetAllAsync();
        Task<MensajesSoporte?> GetByIdAsync(int id);
        Task<MensajesSoporte> CreateAsync(MensajesSoporte entity);
        Task UpdateAsync(MensajesSoporte entity);
        Task DeleteAsync(int id);
    }
}
