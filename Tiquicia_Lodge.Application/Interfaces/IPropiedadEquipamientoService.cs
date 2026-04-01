using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPropiedadEquipamientoService
    {
        Task<IEnumerable<PropiedadEquipamiento>> GetAllAsync();
        Task<PropiedadEquipamiento?> GetByIdAsync(int id);
        Task<PropiedadEquipamiento> CreateAsync(PropiedadEquipamiento entity);
        Task UpdateAsync(PropiedadEquipamiento entity);
        Task DeleteAsync(int id);
    }
}
