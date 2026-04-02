using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class SesionesService : ISesionesService
    {
        private readonly IRepository<Sesiones> _repository;

        public SesionesService(IRepository<Sesiones> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Sesiones>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Sesiones?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Sesiones> CreateAsync(Sesiones entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Sesiones entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
