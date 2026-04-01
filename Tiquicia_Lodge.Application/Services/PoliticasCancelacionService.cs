using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PoliticasCancelacionService : IPoliticasCancelacionService
    {
        private readonly IRepository<PoliticasCancelacion> _repository;

        public PoliticasCancelacionService(IRepository<PoliticasCancelacion> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<PoliticasCancelacion>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<PoliticasCancelacion?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<PoliticasCancelacion> CreateAsync(PoliticasCancelacion entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(PoliticasCancelacion entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
