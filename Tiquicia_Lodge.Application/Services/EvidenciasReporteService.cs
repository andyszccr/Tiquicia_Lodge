using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class EvidenciasReporteService : IEvidenciasReporteService
    {
        private readonly IRepository<EvidenciasReporte> _repository;

        public EvidenciasReporteService(IRepository<EvidenciasReporte> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<EvidenciasReporte>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<EvidenciasReporte?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<EvidenciasReporte> CreateAsync(EvidenciasReporte entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(EvidenciasReporte entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
