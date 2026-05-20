using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class NewsletterSuscriptoresService : INewsletterSuscriptoresService
    {
        private readonly IRepository<NewsletterSuscriptores> _repository;

        public NewsletterSuscriptoresService(IRepository<NewsletterSuscriptores> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<NewsletterSuscriptores>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<NewsletterSuscriptores?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<NewsletterSuscriptores> CreateAsync(NewsletterSuscriptores entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(NewsletterSuscriptores entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
