using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class CantonesService : ICantonesService
    {
        private readonly IRepository<Cantones> _repository;

        public CantonesService(IRepository<Cantones> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Cantones>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Cantones?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Cantones> CreateAsync(Cantones entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Cantones entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
