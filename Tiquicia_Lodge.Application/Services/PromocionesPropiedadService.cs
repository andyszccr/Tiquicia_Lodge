using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PromocionesPropiedadService : IPromocionesPropiedadService
    {
        private readonly IRepository<PromocionesPropiedad> _repository;

        public PromocionesPropiedadService(IRepository<PromocionesPropiedad> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<PromocionesPropiedad>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<PromocionesPropiedad?> GetByIdAsync(int idPromocion, int idPropiedad) => await _repository.GetByIdAsync(idPromocion, idPropiedad);
        public async Task<PromocionesPropiedad> CreateAsync(PromocionesPropiedad entity) => await _repository.CreateAsync(entity);
        public async Task DeleteAsync(int idPromocion, int idPropiedad) => await _repository.DeleteAsync(idPromocion, idPropiedad);
    }
}
