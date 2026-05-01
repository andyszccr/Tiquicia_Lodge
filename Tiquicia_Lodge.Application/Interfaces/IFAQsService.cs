using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IFAQsService
    {
        Task<IEnumerable<FAQs>> GetAllAsync();
        Task<FAQs?> GetByIdAsync(int id);
        Task<FAQs> CreateAsync(FAQs entity);
        Task UpdateAsync(FAQs entity);
        Task DeleteAsync(int id);
    }
}
