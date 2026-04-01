using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class EquipamientoService : IEquipamientoService
    {
        private readonly IRepository<Equipamiento> _repository;

        public EquipamientoService(IRepository<Equipamiento> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Equipamiento>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Equipamiento?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Equipamiento> CreateAsync(Equipamiento entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Equipamiento entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
