using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PropiedadService : IPropiedadService
    {
        private readonly IRepository<Propiedad> _repository;

        public PropiedadService(IRepository<Propiedad> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Propiedad>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Propiedad?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Propiedad> CreateAsync(Propiedad entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Propiedad entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
