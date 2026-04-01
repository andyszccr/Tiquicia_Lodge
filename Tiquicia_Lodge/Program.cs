using Microsoft.EntityFrameworkCore;
using Tiquicia_Lodge.Domain.Entities;
using Tiquicia_Lodge.Application.Interfaces;
using Tiquicia_Lodge.Application.Services;
using Tiquicia_Lodge.Domain.Interfaces;
using Tiquicia_Lodge.Infrastructure.Repositories;
using Tiquicia_Lodge.Infrastructure.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Configurar contexto de la base de datos leyendo de appsettings.json
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Inyección de dependencias de Repositorios y Servicios
builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
builder.Services.AddScoped<IUsuarioService, UsuarioService>();
builder.Services.AddScoped<IPropiedadService, PropiedadService>();
builder.Services.AddScoped<IReservaService, ReservaService>();
builder.Services.AddScoped<IPagoService, PagoService>();
builder.Services.AddScoped<ICalificacionPropiedadService, CalificacionPropiedadService>();

// Nuevos Servicios
builder.Services.AddScoped<IEstadoService, EstadoService>();
builder.Services.AddScoped<IFotosPropiedadService, FotosPropiedadService>();
builder.Services.AddScoped<IPropiedadServiciosService, PropiedadServiciosService>();
builder.Services.AddScoped<IProvinciasService, ProvinciasService>();
builder.Services.AddScoped<IRolesService, RolesService>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
