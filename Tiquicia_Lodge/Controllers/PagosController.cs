using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PagosController : ControllerBase
    {
        private readonly IPagoService _service;
        public PagosController(IPagoService service) => _service = service;

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Pago>>> Get() => Ok(await _service.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<ActionResult<Pago>> Get(int id)
        {
            var item = await _service.GetByIdAsync(id);
            return item == null ? NotFound() : Ok(item);
        }

        [HttpPost]
        public async Task<ActionResult<Pago>> Post(Pago pago)
        {
            var created = await _service.CreateAsync(pago);
            return CreatedAtAction(nameof(Get), new { id = created.IdPago }, created);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, Pago pago)
        {
            if (id != pago.IdPago) return BadRequest();
            await _service.UpdateAsync(pago);
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
