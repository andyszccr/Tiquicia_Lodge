using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PropiedadEquipamientoController : ControllerBase
    {
        private readonly IPropiedadEquipamientoService _service;

        public PropiedadEquipamientoController(IPropiedadEquipamientoService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<PropiedadEquipamiento>>> Get()
        {
            var data = await _service.GetAllAsync();
            return Ok(data);
        }

        [HttpGet("{idPropiedad}/{idEquipamiento}")]
        public async Task<ActionResult<PropiedadEquipamiento>> Get(int idPropiedad, int idEquipamiento)
        {
            var data = await _service.GetByKeysAsync(idPropiedad, idEquipamiento);
            if (data == null) return NotFound();
            return Ok(data);
        }

        [HttpPost]
        public async Task<ActionResult<PropiedadEquipamiento>> Post([FromBody] PropiedadEquipamiento entity)
        {
            await _service.CreateAsync(entity);
            return Ok(entity);
        }

        [HttpPut]
        public async Task<IActionResult> Put([FromBody] PropiedadEquipamiento entity)
        {
            await _service.UpdateAsync(entity);
            return NoContent();
        }

        [HttpDelete("{idPropiedad}/{idEquipamiento}")]
        public async Task<IActionResult> Delete(int idPropiedad, int idEquipamiento)
        {
            await _service.DeleteAsync(idPropiedad, idEquipamiento);
            return NoContent();
        }
    }
}
