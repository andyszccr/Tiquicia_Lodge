using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPropiedadServiciosService
    {
        Task<IEnumerable<PropiedadServicios>> GetAllAsync();
        Task<PropiedadServicios?> GetByIdAsync(int id);
        Task<PropiedadServicios> CreateAsync(PropiedadServicios entity);
        Task UpdateAsync(PropiedadServicios entity);
        Task DeleteAsync(int id);
    }
}
