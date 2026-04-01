using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FotosPropiedadsController : ControllerBase
    {
        private readonly IFotosPropiedadService _service;

        public FotosPropiedadsController(IFotosPropiedadService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<FotosPropiedad>>> Get()
        {
            var data = await _service.GetAllAsync();
            return Ok(data);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<FotosPropiedad>> Get(int id)
        {
            var data = await _service.GetByIdAsync(id);
            if (data == null) return NotFound();
            return Ok(data);
        }

        [HttpPost]
        public async Task<ActionResult<FotosPropiedad>> Post([FromBody] FotosPropiedad entity)
        {
            await _service.CreateAsync(entity);
            return CreatedAtAction(nameof(Get), new { id = 1 }, entity); // TODO: dynamic id mapping
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, [FromBody] FotosPropiedad entity)
        {
            await _service.UpdateAsync(entity);
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
