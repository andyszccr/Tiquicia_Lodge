using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ReglasCasaService : IReglasCasaService
    {
        private readonly IRepository<ReglasCasa> _repository;

        public ReglasCasaService(IRepository<ReglasCasa> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<ReglasCasa>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<ReglasCasa?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<ReglasCasa> CreateAsync(ReglasCasa entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(ReglasCasa entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
