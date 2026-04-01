using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IHorariosCheckInOutService
    {
        Task<IEnumerable<HorariosCheckInOut>> GetAllAsync();
        Task<HorariosCheckInOut?> GetByIdAsync(int id);
        Task<HorariosCheckInOut> CreateAsync(HorariosCheckInOut entity);
        Task UpdateAsync(HorariosCheckInOut entity);
        Task DeleteAsync(int id);
    }
}
