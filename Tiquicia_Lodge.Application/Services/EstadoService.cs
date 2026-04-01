using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class EstadoService : IEstadoService
    {
        private readonly IRepository<Estado> _repository;

        public EstadoService(IRepository<Estado> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Estado>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Estado?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Estado> CreateAsync(Estado entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Estado entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
