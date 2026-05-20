using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ZonasTicasService : IZonasTicasService
    {
        private readonly IRepository<ZonasTicas> _repository;

        public ZonasTicasService(IRepository<ZonasTicas> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<ZonasTicas>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<ZonasTicas?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<ZonasTicas> CreateAsync(ZonasTicas entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(ZonasTicas entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
