using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class CorreosUsuarioService : ICorreosUsuarioService
    {
        private readonly IRepository<CorreosUsuario> _repository;

        public CorreosUsuarioService(IRepository<CorreosUsuario> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<CorreosUsuario>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<CorreosUsuario?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<CorreosUsuario> CreateAsync(CorreosUsuario entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(CorreosUsuario entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
