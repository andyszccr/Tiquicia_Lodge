using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Interfaces;
using Tiquicia_Lodge.Models;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CalificacionesPropiedadController : ControllerBase
    {
        private readonly ICalificacionPropiedadService _service;
        public CalificacionesPropiedadController(ICalificacionPropiedadService service) => _service = service;

        [HttpGet]
        public async Task<ActionResult<IEnumerable<CalificacionPropiedad>>> Get() => Ok(await _service.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<ActionResult<CalificacionPropiedad>> Get(int id)
        {
            var item = await _service.GetByIdAsync(id);
            return item == null ? NotFound() : Ok(item);
        }

        [HttpPost]
        public async Task<ActionResult<CalificacionPropiedad>> Post(CalificacionPropiedad calificacion)
        {
            var created = await _service.CreateAsync(calificacion);
            return CreatedAtAction(nameof(Get), new { id = created.IdCalificacion }, created);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, CalificacionPropiedad calificacion)
        {
            if (id != calificacion.IdCalificacion) return BadRequest();
            await _service.UpdateAsync(calificacion);
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
