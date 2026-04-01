using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class TelefonosUsuarioService : ITelefonosUsuarioService
    {
        private readonly IRepository<TelefonosUsuario> _repository;

        public TelefonosUsuarioService(IRepository<TelefonosUsuario> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<TelefonosUsuario>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<TelefonosUsuario?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<TelefonosUsuario> CreateAsync(TelefonosUsuario entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(TelefonosUsuario entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
