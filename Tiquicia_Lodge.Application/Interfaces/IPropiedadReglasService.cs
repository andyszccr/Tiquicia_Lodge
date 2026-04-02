using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPropiedadReglasService
    {
        Task<IEnumerable<PropiedadReglas>> GetAllAsync();
        Task<PropiedadReglas?> GetByKeysAsync(int idPropiedad, int idRegla);
        Task<PropiedadReglas> CreateAsync(PropiedadReglas entity);
        Task UpdateAsync(PropiedadReglas entity);
        Task DeleteAsync(int idPropiedad, int idRegla);
    }
}
