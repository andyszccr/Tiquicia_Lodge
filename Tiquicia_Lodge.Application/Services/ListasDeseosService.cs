using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ListasDeseosService : IListasDeseosService
    {
        private readonly IRepository<ListasDeseos> _repository;

        public ListasDeseosService(IRepository<ListasDeseos> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<ListasDeseos>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<ListasDeseos?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<ListasDeseos> CreateAsync(ListasDeseos entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(ListasDeseos entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
