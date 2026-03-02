using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Services
{
    public class CalificacionPropiedadService : ICalificacionPropiedadService
    {
        private readonly ApplicationDbContext _context;

        public CalificacionPropiedadService(ApplicationDbContext context) => _context = context;

        public async Task<IEnumerable<CalificacionPropiedad>> GetAllAsync() => await _context.CalificacionesPropiedad.ToListAsync();
        public async Task<CalificacionPropiedad> GetByIdAsync(int id) => await _context.CalificacionesPropiedad.FindAsync(id);
        
        public async Task<CalificacionPropiedad> CreateAsync(CalificacionPropiedad calificacion)
        {
            _context.CalificacionesPropiedad.Add(calificacion);
            await _context.SaveChangesAsync();
            return calificacion;
        }

        public async Task UpdateAsync(CalificacionPropiedad calificacion)
        {
            _context.Entry(calificacion).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var item = await _context.CalificacionesPropiedad.FindAsync(id);
            if (item != null) { _context.CalificacionesPropiedad.Remove(item); await _context.SaveChangesAsync(); }
        }
    }
}
