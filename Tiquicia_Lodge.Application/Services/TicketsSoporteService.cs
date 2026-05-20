using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class TicketsSoporteService : ITicketsSoporteService
    {
        private readonly IRepository<TicketsSoporte> _repository;

        public TicketsSoporteService(IRepository<TicketsSoporte> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<TicketsSoporte>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<TicketsSoporte?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<TicketsSoporte> CreateAsync(TicketsSoporte entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(TicketsSoporte entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
