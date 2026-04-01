using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPropiedadService
    {
        Task<IEnumerable<Propiedad>> GetAllAsync();
        Task<Propiedad?> GetByIdAsync(int id);
        Task<Propiedad> CreateAsync(Propiedad propiedad);
        Task UpdateAsync(Propiedad propiedad);
        Task DeleteAsync(int id);
    }
}
