using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Domain.Entities;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ListaPropiedadesController : ControllerBase
    {
        private readonly IListaPropiedadesService _service;

        public ListaPropiedadesController(IListaPropiedadesService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<ListaPropiedades>>> Get()
        {
            var data = await _service.GetAllAsync();
            return Ok(data);
        }

        [HttpGet("{idLista}/{idPropiedad}")]
        public async Task<ActionResult<ListaPropiedades>> Get(int idLista, int idPropiedad)
        {
            var data = await _service.GetByKeysAsync(idLista, idPropiedad);
            if (data == null) return NotFound();
            return Ok(data);
        }

        [HttpPost]
        public async Task<ActionResult<ListaPropiedades>> Post([FromBody] ListaPropiedades entity)
        {
            await _service.CreateAsync(entity);
            return Ok(entity);
        }

        [HttpPut]
        public async Task<IActionResult> Put([FromBody] ListaPropiedades entity)
        {
            await _service.UpdateAsync(entity);
            return NoContent();
        }

        [HttpDelete("{idLista}/{idPropiedad}")]
        public async Task<IActionResult> Delete(int idLista, int idPropiedad)
        {
            await _service.DeleteAsync(idLista, idPropiedad);
            return NoContent();
        }
    }
}
