using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ICalificacionPropiedadService
    {
        Task<IEnumerable<CalificacionPropiedad>> GetAllAsync();
        Task<CalificacionPropiedad?> GetByIdAsync(int id);
        Task<CalificacionPropiedad> CreateAsync(CalificacionPropiedad entity);
        Task UpdateAsync(CalificacionPropiedad entity);
        Task DeleteAsync(int id);
    }
}
