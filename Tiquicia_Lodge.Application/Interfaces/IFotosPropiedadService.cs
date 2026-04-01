using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IFotosPropiedadService
    {
        Task<IEnumerable<FotosPropiedad>> GetAllAsync();
        Task<FotosPropiedad?> GetByIdAsync(int id);
        Task<FotosPropiedad> CreateAsync(FotosPropiedad entity);
        Task UpdateAsync(FotosPropiedad entity);
        Task DeleteAsync(int id);
    }
}
