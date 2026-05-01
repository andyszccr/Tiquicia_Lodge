using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PromocionesService : IPromocionesService
    {
        private readonly IRepository<Promociones> _repository;

        public PromocionesService(IRepository<Promociones> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Promociones>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<Promociones?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<Promociones> CreateAsync(Promociones entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(Promociones entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
