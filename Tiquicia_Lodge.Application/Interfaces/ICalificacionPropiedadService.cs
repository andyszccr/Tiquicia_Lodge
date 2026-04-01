using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface ICalificacionPropiedadService
    {
        Task<IEnumerable<CalificacionPropiedad>> GetAllAsync();
        Task<CalificacionPropiedad?> GetByIdAsync(int id);
        Task<CalificacionPropiedad> CreateAsync(CalificacionPropiedad calificacion);
        Task UpdateAsync(CalificacionPropiedad calificacion);
        Task DeleteAsync(int id);
    }
}
