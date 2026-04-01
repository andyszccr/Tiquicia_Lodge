using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class VerificacionesUsuarioService : IVerificacionesUsuarioService
    {
        private readonly IRepository<VerificacionesUsuario> _repository;

        public VerificacionesUsuarioService(IRepository<VerificacionesUsuario> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<VerificacionesUsuario>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<VerificacionesUsuario?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<VerificacionesUsuario> CreateAsync(VerificacionesUsuario entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(VerificacionesUsuario entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
