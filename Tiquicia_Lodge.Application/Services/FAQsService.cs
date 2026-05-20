using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class FAQsService : IFAQsService
    {
        private readonly IRepository<FAQs> _repository;

        public FAQsService(IRepository<FAQs> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<FAQs>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<FAQs?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<FAQs> CreateAsync(FAQs entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(FAQs entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
