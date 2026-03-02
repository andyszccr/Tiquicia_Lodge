using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReservasController : ControllerBase
    {
        private readonly IReservaService _service;
        public ReservasController(IReservaService service) => _service = service;

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Reserva>>> Get() => Ok(await _service.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<ActionResult<Reserva>> Get(int id)
        {
            var res = await _service.GetByIdAsync(id);
            return res == null ? NotFound() : Ok(res);
        }

        [HttpPost]
        public async Task<ActionResult<Reserva>> Post(Reserva reserva)
        {
            var created = await _service.CreateAsync(reserva);
            return CreatedAtAction(nameof(Get), new { id = created.IdReserva }, created);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, Reserva reserva)
        {
            if (id != reserva.IdReserva) return BadRequest();
            await _service.UpdateAsync(reserva);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            await _service.DeleteAsync(id);
            return NoContent();
        }
    }
}
