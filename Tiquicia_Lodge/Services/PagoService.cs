using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Services
{
    public class PagoService : IPagoService
    {
        private readonly ApplicationDbContext _context;

        public PagoService(ApplicationDbContext context) => _context = context;

        public async Task<IEnumerable<Pago>> GetAllAsync() => await _context.Pagos.ToListAsync();
        public async Task<Pago> GetByIdAsync(int id) => await _context.Pagos.FindAsync(id);
        
        public async Task<Pago> CreateAsync(Pago pago)
        {
            _context.Pagos.Add(pago);
            await _context.SaveChangesAsync();
            return pago;
        }

        public async Task UpdateAsync(Pago pago)
        {
            _context.Entry(pago).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var item = await _context.Pagos.FindAsync(id);
            if (item != null) { _context.Pagos.Remove(item); await _context.SaveChangesAsync(); }
        }
    }
}
