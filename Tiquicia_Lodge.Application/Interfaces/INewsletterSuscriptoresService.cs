using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface INewsletterSuscriptoresService
    {
        Task<IEnumerable<NewsletterSuscriptores>> GetAllAsync();
        Task<NewsletterSuscriptores?> GetByIdAsync(int id);
        Task<NewsletterSuscriptores> CreateAsync(NewsletterSuscriptores entity);
        Task UpdateAsync(NewsletterSuscriptores entity);
        Task DeleteAsync(int id);
    }
}
