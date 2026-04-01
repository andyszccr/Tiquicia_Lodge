using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class FotosPropiedadService : IFotosPropiedadService
    {
        private readonly IRepository<FotosPropiedad> _repository;

        public FotosPropiedadService(IRepository<FotosPropiedad> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<FotosPropiedad>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<FotosPropiedad?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<FotosPropiedad> CreateAsync(FotosPropiedad entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(FotosPropiedad entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
