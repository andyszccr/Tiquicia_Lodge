using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class TransporteCercanoService : ITransporteCercanoService
    {
        private readonly IRepository<TransporteCercano> _repository;

        public TransporteCercanoService(IRepository<TransporteCercano> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<TransporteCercano>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<TransporteCercano?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<TransporteCercano> CreateAsync(TransporteCercano entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(TransporteCercano entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
