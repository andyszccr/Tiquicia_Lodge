using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IEvidenciasReporteService
    {
        Task<IEnumerable<EvidenciasReporte>> GetAllAsync();
        Task<EvidenciasReporte?> GetByIdAsync(int id);
        Task<EvidenciasReporte> CreateAsync(EvidenciasReporte entity);
        Task UpdateAsync(EvidenciasReporte entity);
        Task DeleteAsync(int id);
    }
}
