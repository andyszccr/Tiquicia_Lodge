using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ReservaService : IReservaService
    {
        private readonly IRepository<Reserva> _repository;

        public ReservaService(IRepository<Reserva> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Reserva>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Reserva?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Reserva> CreateAsync(Reserva entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Reserva entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
