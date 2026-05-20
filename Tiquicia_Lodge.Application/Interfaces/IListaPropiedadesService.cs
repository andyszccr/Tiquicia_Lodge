using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Application.Interfaces
{
    public interface IListaPropiedadesService
    {
        Task<IEnumerable<ListaPropiedades>> GetAllAsync();
        Task<ListaPropiedades?> GetByKeysAsync(int idLista, int idPropiedad);
        Task<ListaPropiedades> CreateAsync(ListaPropiedades entity);
        Task UpdateAsync(ListaPropiedades entity);
        Task DeleteAsync(int idLista, int idPropiedad);
    }
}
