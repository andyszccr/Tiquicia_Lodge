using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PropiedadServiciosController : ControllerBase
    {
        private readonly IPropiedadServiciosService _service;

        public PropiedadServiciosController(IPropiedadServiciosService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<PropiedadServicios>>> Get()
        {
            var data = await _service.GetAllAsync();
            return Ok(data);
        }

        [HttpGet("{idPropiedad}/{idServicio}")]
        public async Task<ActionResult<PropiedadServicios>> Get(int idPropiedad, int idServicio)
        {
            var data = await _service.GetByKeysAsync(idPropiedad, idServicio);
            if (data == null) return NotFound();
            return Ok(data);
        }

        [HttpPost]
        public async Task<ActionResult<PropiedadServicios>> Post([FromBody] PropiedadServicios entity)
        {
            await _service.CreateAsync(entity);
            return Ok(entity);
        }

        [HttpPut]
        public async Task<IActionResult> Put([FromBody] PropiedadServicios entity)
        {
            await _service.UpdateAsync(entity);
            return NoContent();
        }

        [HttpDelete("{idPropiedad}/{idServicio}")]
        public async Task<IActionResult> Delete(int idPropiedad, int idServicio)
        {
            await _service.DeleteAsync(idPropiedad, idServicio);
            return NoContent();
        }
    }
}
