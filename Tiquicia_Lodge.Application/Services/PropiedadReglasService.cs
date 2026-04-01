using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PropiedadReglasService : IPropiedadReglasService
    {
        private readonly IRepository<PropiedadReglas> _repository;

        public PropiedadReglasService(IRepository<PropiedadReglas> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<PropiedadReglas>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<PropiedadReglas?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<PropiedadReglas> CreateAsync(PropiedadReglas entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(PropiedadReglas entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
