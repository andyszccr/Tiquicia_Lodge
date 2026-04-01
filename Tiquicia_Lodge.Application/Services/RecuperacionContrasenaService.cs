using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class RecuperacionContrasenaService : IRecuperacionContrasenaService
    {
        private readonly IRepository<RecuperacionContrasena> _repository;

        public RecuperacionContrasenaService(IRepository<RecuperacionContrasena> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<RecuperacionContrasena>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<RecuperacionContrasena?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<RecuperacionContrasena> CreateAsync(RecuperacionContrasena entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(RecuperacionContrasena entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
