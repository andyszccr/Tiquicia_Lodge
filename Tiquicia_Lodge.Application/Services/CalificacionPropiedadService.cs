using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class CalificacionPropiedadService : ICalificacionPropiedadService
    {
        private readonly IRepository<CalificacionPropiedad> _repository;

        public CalificacionPropiedadService(IRepository<CalificacionPropiedad> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<CalificacionPropiedad>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<CalificacionPropiedad?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<CalificacionPropiedad> CreateAsync(CalificacionPropiedad entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(CalificacionPropiedad entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
