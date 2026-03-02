using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Services
{
    public class ReservaService : IReservaService
    {
        private readonly ApplicationDbContext _context;

        public ReservaService(ApplicationDbContext context) => _context = context;

        public async Task<IEnumerable<Reserva>> GetAllAsync() => await _context.Reservas.ToListAsync();
        public async Task<Reserva> GetByIdAsync(int id) => await _context.Reservas.FindAsync(id);
        
        public async Task<Reserva> CreateAsync(Reserva reserva)
        {
            _context.Reservas.Add(reserva);
            await _context.SaveChangesAsync();
            return reserva;
        }

        public async Task UpdateAsync(Reserva reserva)
        {
            _context.Entry(reserva).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var res = await _context.Reservas.FindAsync(id);
            if (res != null) { _context.Reservas.Remove(res); await _context.SaveChangesAsync(); }
        }
    }
}
