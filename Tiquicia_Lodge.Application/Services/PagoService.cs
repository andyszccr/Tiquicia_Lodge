using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PagoService : IPagoService
    {
        private readonly IRepository<Pago> _repository;

        public PagoService(IRepository<Pago> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Pago>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Pago?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Pago> CreateAsync(Pago entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Pago entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
