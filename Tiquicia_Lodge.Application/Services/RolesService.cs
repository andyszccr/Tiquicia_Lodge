using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class RolesService : IRolesService
    {
        private readonly IRepository<Roles> _repository;

        public RolesService(IRepository<Roles> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<Roles>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<Roles?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<Roles> CreateAsync(Roles entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(Roles entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
