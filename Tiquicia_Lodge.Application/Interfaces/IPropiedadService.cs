using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPropiedadService
    {
        Task<IEnumerable<Propiedad>> GetAllAsync();
        Task<Propiedad?> GetByIdAsync(int id);
        Task<Propiedad> CreateAsync(Propiedad entity);
        Task UpdateAsync(Propiedad entity);
        Task DeleteAsync(int id);
    }
}
