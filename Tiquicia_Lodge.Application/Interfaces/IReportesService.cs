using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IReportesService
    {
        Task<IEnumerable<Reportes>> GetAllAsync();
        Task<Reportes?> GetByIdAsync(int id);
        Task<Reportes> CreateAsync(Reportes entity);
        Task UpdateAsync(Reportes entity);
        Task DeleteAsync(int id);
    }
}
