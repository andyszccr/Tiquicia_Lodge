using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class MensajesSoporteService : IMensajesSoporteService
    {
        private readonly IRepository<MensajesSoporte> _repository;

        public MensajesSoporteService(IRepository<MensajesSoporte> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<MensajesSoporte>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<MensajesSoporte?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<MensajesSoporte> CreateAsync(MensajesSoporte entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(MensajesSoporte entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
