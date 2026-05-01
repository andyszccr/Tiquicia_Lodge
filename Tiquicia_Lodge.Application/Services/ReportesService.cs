using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ReportesService : IReportesService
    {
        private readonly IRepository<Reportes> _repository;

        public ReportesService(IRepository<Reportes> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Reportes>> GetAllAsync() => await _repository.GetAllAsync();
        public async Task<Reportes?> GetByIdAsync(int id) => await _repository.GetByIdAsync(id);
        public async Task<Reportes> CreateAsync(Reportes entity) => await _repository.CreateAsync(entity);
        public async Task UpdateAsync(Reportes entity) => await _repository.UpdateAsync(entity);
        public async Task DeleteAsync(int id) => await _repository.DeleteAsync(id);
    }
}
