using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class PropiedadEquipamientoService : IPropiedadEquipamientoService
    {
        private readonly IRepository<PropiedadEquipamiento> _repository;

        public PropiedadEquipamientoService(IRepository<PropiedadEquipamiento> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<PropiedadEquipamiento>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<PropiedadEquipamiento?> GetByKeysAsync(int idPropiedad, int idEquipamiento)
        {
            return await _repository.GetByIdAsync(idPropiedad, idEquipamiento);
        }

        public async Task<PropiedadEquipamiento> CreateAsync(PropiedadEquipamiento entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(PropiedadEquipamiento entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int idPropiedad, int idEquipamiento)
        {
            await _repository.DeleteAsync(idPropiedad, idEquipamiento);
        }
    }
}
