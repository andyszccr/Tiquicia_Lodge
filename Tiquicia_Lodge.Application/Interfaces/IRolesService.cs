using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IRolesService
    {
        Task<IEnumerable<Roles>> GetAllAsync();
        Task<Roles?> GetByIdAsync(int id);
        Task<Roles> CreateAsync(Roles entity);
        Task UpdateAsync(Roles entity);
        Task DeleteAsync(int id);
    }
}
