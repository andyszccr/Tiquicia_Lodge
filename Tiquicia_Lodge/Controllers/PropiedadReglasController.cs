using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PropiedadReglasController : ControllerBase
    {
        private readonly IPropiedadReglasService _service;

        public PropiedadReglasController(IPropiedadReglasService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<PropiedadReglas>>> Get()
        {
            var data = await _service.GetAllAsync();
            return Ok(data);
        }

        [HttpGet("{idPropiedad}/{idRegla}")]
        public async Task<ActionResult<PropiedadReglas>> Get(int idPropiedad, int idRegla)
        {
            var data = await _service.GetByKeysAsync(idPropiedad, idRegla);
            if (data == null) return NotFound();
            return Ok(data);
        }

        [HttpPost]
        public async Task<ActionResult<PropiedadReglas>> Post([FromBody] PropiedadReglas entity)
        {
            await _service.CreateAsync(entity);
            return Ok(entity);
        }

        [HttpPut]
        public async Task<IActionResult> Put([FromBody] PropiedadReglas entity)
        {
            await _service.UpdateAsync(entity);
            return NoContent();
        }

        [HttpDelete("{idPropiedad}/{idRegla}")]
        public async Task<IActionResult> Delete(int idPropiedad, int idRegla)
        {
            await _service.DeleteAsync(idPropiedad, idRegla);
            return NoContent();
        }
    }
}
