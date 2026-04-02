using System.Collections.Generic;
using System.Threading.Tasks;

namespace Tiquicia_Lodge.Domain.Interfaces
{
    public interface IRepository<T> where T : class
    {
        Task<IEnumerable<T>> GetAllAsync();
        Task<T?> GetByIdAsync(params object[] keyValues);
        Task<T> CreateAsync(T entity);
        Task UpdateAsync(T entity);
        Task DeleteAsync(params object[] keyValues);
    }
}
