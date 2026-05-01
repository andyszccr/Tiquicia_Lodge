using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PromocionesPropiedadController : ControllerBase
    {
        private readonly IPromocionesPropiedadService _service;

        public PromocionesPropiedadController(IPromocionesPropiedadService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<PromocionesPropiedad>>> GetAll() => Ok(await _service.GetAllAsync());

        [HttpGet("{idPromocion}/{idPropiedad}")]
        public async Task<ActionResult<PromocionesPropiedad>> GetById(int idPromocion, int idPropiedad)
        {
            var entity = await _service.GetByIdAsync(idPromocion, idPropiedad);
            if (entity == null) return NotFound();
            return Ok(entity);
        }

        [HttpPost]
        public async Task<ActionResult<PromocionesPropiedad>> Create(PromocionesPropiedad entity)
        {
            var created = await _service.CreateAsync(entity);
            return CreatedAtAction(nameof(GetById), new { idPromocion = created.IdPromocion, idPropiedad = created.IdPropiedad }, created);
        }

        [HttpDelete("{idPromocion}/{idPropiedad}")]
        public async Task<IActionResult> Delete(int idPromocion, int idPropiedad)
        {
            await _service.DeleteAsync(idPromocion, idPropiedad);
            return NoContent();
        }
    }
}
