using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class MensajesSoporteController : ControllerBase
    {
        private readonly IMensajesSoporteService _service;

        public MensajesSoporteController(IMensajesSoporteService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<MensajesSoporte>>> GetAll() => Ok(await _service.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<ActionResult<MensajesSoporte>> GetById(int id)
        {
            var entity = await _service.GetByIdAsync(id);
            if (entity == null) return NotFound();
            return Ok(entity);
        }

        [HttpPost]
        public async Task<ActionResult<MensajesSoporte>> Create(MensajesSoporte entity)
        {
            var created = await _service.CreateAsync(entity);
            return CreatedAtAction(nameof(GetById), new { id = created.IdMensaje }, created);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(int id, MensajesSoporte entity)
        {
            if (id != entity.IdMensaje) return BadRequest();
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
