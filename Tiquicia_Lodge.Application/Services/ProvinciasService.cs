using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ProvinciasService : IProvinciasService
    {
        private readonly IRepository<Provincias> _repository;

        public ProvinciasService(IRepository<Provincias> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Provincias>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Provincias?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Provincias> CreateAsync(Provincias entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Provincias entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
