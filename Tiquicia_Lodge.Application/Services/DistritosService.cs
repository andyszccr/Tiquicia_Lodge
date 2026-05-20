using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class DistritosService : IDistritosService
    {
        private readonly IRepository<Distritos> _repository;

        public DistritosService(IRepository<Distritos> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Distritos>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Distritos?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Distritos> CreateAsync(Distritos entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Distritos entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
