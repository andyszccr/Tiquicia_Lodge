using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Infrastructure.Data; // Usar la versión de SQL Server por defecto
// Si quieres usar PostgreSQL, cambia el using a:
// using Tiquicia_Lodge.Infrastructure.PostgreSQL.Data;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DbConnectionController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly IConfiguration _configuration;

        public DbConnectionController(ApplicationDbContext context, IConfiguration configuration)
        {
            _context = context;
            _configuration = configuration;
        }

        [HttpGet]
        public async Task<ActionResult<object>> Check()
        {
            try
            {
                // Intentar conectarse a la BD
                await _context.Database.CanConnectAsync();
                
                return Ok(new
                {
                    Status = "Healthy",
                    Timestamp = DateTime.UtcNow,
                    Database = new
                    {
                        Connected = true,
                        Message = "Connected successfully!"
                    }
                });
            }
            catch (Exception ex)
            {
                return StatusCode(503, new
                {
                    Status = "Unhealthy",
                    Timestamp = DateTime.UtcNow,
                    Database = new
                    {
                        Connected = false,
                        Message = $"Connection failed: {ex.Message}"
                    }
                });
            }
        }
    }
}
