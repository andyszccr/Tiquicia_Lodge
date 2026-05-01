using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class TicketsSoporteController : ControllerBase
    {
        private readonly ITicketsSoporteService _service;

        public TicketsSoporteController(ITicketsSoporteService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<TicketsSoporte>>> GetAll() => Ok(await _service.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<ActionResult<TicketsSoporte>> GetById(int id)
        {
            var entity = await _service.GetByIdAsync(id);
            if (entity == null) return NotFound();
            return Ok(entity);
        }

        [HttpPost]
        public async Task<ActionResult<TicketsSoporte>> Create(TicketsSoporte entity)
        {
            var created = await _service.CreateAsync(entity);
            return CreatedAtAction(nameof(GetById), new { id = created.IdTicket }, created);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(int id, TicketsSoporte entity)
        {
            if (id != entity.IdTicket) return BadRequest();
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
