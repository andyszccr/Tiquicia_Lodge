using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IEquipamientoService
    {
        Task<IEnumerable<Equipamiento>> GetAllAsync();
        Task<Equipamiento?> GetByIdAsync(int id);
        Task<Equipamiento> CreateAsync(Equipamiento entity);
        Task UpdateAsync(Equipamiento entity);
        Task DeleteAsync(int id);
    }
}
