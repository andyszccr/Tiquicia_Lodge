using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Services
{
    public class PropiedadService : IPropiedadService
    {
        private readonly ApplicationDbContext _context;

        public PropiedadService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Propiedad>> GetAllAsync() => await _context.Propiedades.ToListAsync();

        public async Task<Propiedad> GetByIdAsync(int id) => await _context.Propiedades.FindAsync(id);

        public async Task<Propiedad> CreateAsync(Propiedad propiedad)
        {
            _context.Propiedades.Add(propiedad);
            await _context.SaveChangesAsync();
            return propiedad;
        }

        public async Task UpdateAsync(Propiedad propiedad)
        {
            _context.Entry(propiedad).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var prop = await _context.Propiedades.FindAsync(id);
            if (prop != null)
            {
                _context.Propiedades.Remove(prop);
                await _context.SaveChangesAsync();
            }
        }
    }
}
