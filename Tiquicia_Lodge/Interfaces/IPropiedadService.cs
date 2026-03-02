using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Interfaces
{
    public interface IPropiedadService
    {
        Task<IEnumerable<Propiedad>> GetAllAsync();
        Task<Propiedad> GetByIdAsync(int id);
        Task<Propiedad> CreateAsync(Propiedad propiedad);
        Task UpdateAsync(Propiedad propiedad);
        Task DeleteAsync(int id);
    }
}
