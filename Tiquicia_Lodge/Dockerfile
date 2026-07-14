FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY Tiquicia_Lodge.slnx ./
COPY Tiquicia_Lodge/*.csproj Tiquicia_Lodge/
COPY Tiquicia_Lodge.Application/*.csproj Tiquicia_Lodge.Application/
COPY Tiquicia_Lodge.Domain/*.csproj Tiquicia_Lodge.Domain/
COPY Tiquicia_Lodge.Infrastructure/*.csproj Tiquicia_Lodge.Infrastructure/

RUN dotnet restore Tiquicia_Lodge/Tiquicia_Lodge.csproj

COPY . .
RUN dotnet publish Tiquicia_Lodge/Tiquicia_Lodge.csproj -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app
EXPOSE 80
EXPOSE 443

ENV ASPNETCORE_URLS=http://+:80

COPY --from=build /app .
ENTRYPOINT ["dotnet", "Tiquicia_Lodge.dll"]
