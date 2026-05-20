using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Domain.Interfaces;

namespace Tiquicia_Lodge.Application.Services
{
    public class ListaPropiedadesService : IListaPropiedadesService
    {
        private readonly IRepository<ListaPropiedades> _repository;

        public ListaPropiedadesService(IRepository<ListaPropiedades> repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<ListaPropiedades>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public async Task<ListaPropiedades?> GetByKeysAsync(int idLista, int idPropiedad)
        {
            return await _repository.GetByIdAsync(idLista, idPropiedad);
        }

        public async Task<ListaPropiedades> CreateAsync(ListaPropiedades entity)
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task UpdateAsync(ListaPropiedades entity)
        {
            await _repository.UpdateAsync(entity);
        }

        public async Task DeleteAsync(int idLista, int idPropiedad)
        {
            await _repository.DeleteAsync(idLista, idPropiedad);
        }
    }
}
