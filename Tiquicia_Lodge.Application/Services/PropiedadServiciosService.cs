using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PropiedadServiciosService : IPropiedadServiciosService
    {
        private readonly IRepository<PropiedadServicios> _repository;

        public PropiedadServiciosService(IRepository<PropiedadServicios> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<PropiedadServicios>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<PropiedadServicios?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<PropiedadServicios> CreateAsync(PropiedadServicios entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(PropiedadServicios entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
