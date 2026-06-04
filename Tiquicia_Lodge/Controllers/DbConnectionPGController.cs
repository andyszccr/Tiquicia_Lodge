using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PostgresDbContext = Tiquicia_Lodge.Infrastructure.PostgreSQL.Data.ApplicationDbContext;

namespace Tiquicia_Lodge.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DbConnectionPGController : ControllerBase
    {
        private readonly PostgresDbContext _context;

        public DbConnectionPGController(PostgresDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<object>> Check()
        {
            try
            {
                await _context.Database.CanConnectAsync();
                
                return Ok(new
                {
                    Status = "Healthy",
                    Timestamp = DateTime.UtcNow,
                    Database = new
                    {
                        Type = "PostgreSQL",
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
                        Type = "PostgreSQL",
                        Connected = false,
                        Message = $"Connection failed: {ex.Message}"
                    }
                });
            }
        }
    }
}
