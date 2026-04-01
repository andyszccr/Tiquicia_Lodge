using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IProvinciasService
    {
        Task<IEnumerable<Provincias>> GetAllAsync();
        Task<Provincias?> GetByIdAsync(int id);
        Task<Provincias> CreateAsync(Provincias entity);
        Task UpdateAsync(Provincias entity);
        Task DeleteAsync(int id);
    }
}
