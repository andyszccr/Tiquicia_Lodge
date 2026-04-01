using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class HorariosCheckInOutService : IHorariosCheckInOutService
    {
        private readonly IRepository<HorariosCheckInOut> _repository;

        public HorariosCheckInOutService(IRepository<HorariosCheckInOut> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<HorariosCheckInOut>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<HorariosCheckInOut?> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<HorariosCheckInOut> CreateAsync(HorariosCheckInOut entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(HorariosCheckInOut entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int id)
        {
            await _repository.DeleteAsync(id);
        }
    }
}
