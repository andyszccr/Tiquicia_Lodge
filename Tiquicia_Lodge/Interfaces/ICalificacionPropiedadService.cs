using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Interfaces
{
    public interface ICalificacionPropiedadService
    {
        Task<IEnumerable<CalificacionPropiedad>> GetAllAsync();
        Task<CalificacionPropiedad> GetByIdAsync(int id);
        Task<CalificacionPropiedad> CreateAsync(CalificacionPropiedad calificacion);
        Task UpdateAsync(CalificacionPropiedad calificacion);
        Task DeleteAsync(int id);
    }
}
