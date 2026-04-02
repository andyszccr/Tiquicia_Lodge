using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IPoliticasCancelacionService
    {
        Task<IEnumerable<PoliticasCancelacion>> GetAllAsync();
        Task<PoliticasCancelacion?> GetByIdAsync(int id);
        Task<PoliticasCancelacion> CreateAsync(PoliticasCancelacion entity);
        Task UpdateAsync(PoliticasCancelacion entity);
        Task DeleteAsync(int id);
    }
}
