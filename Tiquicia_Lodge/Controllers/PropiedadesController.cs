using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PropiedadesController : ControllerBase
    {
        private readonly IPropiedadService _propiedadService;

        public PropiedadesController(IPropiedadService propiedadService)
        {
            _propiedadService = propiedadService;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Propiedad>>> Get() => Ok(await _propiedadService.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<ActionResult<Propiedad>> Get(int id)
        {
            var p = await _propiedadService.GetByIdAsync(id);
            return p == null ? NotFound() : Ok(p);
        }

        [HttpPost]
        public async Task<ActionResult<Propiedad>> Post(Propiedad propiedad)
        {
            var created = await _propiedadService.CreateAsync(propiedad);
            return CreatedAtAction(nameof(Get), new { id = created.IdPropiedad }, created);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, Propiedad propiedad)
        {
            if (id != propiedad.IdPropiedad) return BadRequest();
            await _propiedadService.UpdateAsync(propiedad);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            await _propiedadService.DeleteAsync(id);
            return NoContent();
        }
    }
}
