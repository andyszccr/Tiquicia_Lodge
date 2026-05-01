using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPromocionesPropiedadService
    {
        Task<IEnumerable<PromocionesPropiedad>> GetAllAsync();
        Task<PromocionesPropiedad?> GetByIdAsync(int idPromocion, int idPropiedad);
        Task<PromocionesPropiedad> CreateAsync(PromocionesPropiedad entity);
        Task DeleteAsync(int idPromocion, int idPropiedad);
    }
}
