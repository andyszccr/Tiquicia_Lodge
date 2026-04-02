using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ComerciosCercanosService : IComerciosCercanosService
    {
        private readonly IRepository<ComerciosCercanos> _repository;

        public ComerciosCercanosService(IRepository<ComerciosCercanos> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<ComerciosCercanos>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<ComerciosCercanos?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<ComerciosCercanos> CreateAsync(ComerciosCercanos entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(ComerciosCercanos entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
