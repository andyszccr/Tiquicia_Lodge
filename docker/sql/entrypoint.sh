#!/bin/bash
set -e

if [ ! -f /tmp/db-initialized ]; then
  /opt/mssql/bin/sqlservr &
  pid="$!"

  for i in {1..60}; do
    if /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -C -Q "SELECT 1" &> /dev/null; then
      echo "SQL Server is ready."
      break
    fi
    echo "Waiting for SQL Server... attempt $i"
    sleep 2
  done

  echo "Creating database if not exists..."
  /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -C -Q "IF NOT EXISTS (SELECT name FROM sys.databases WHERE name='TiquiciaLodge2') CREATE DATABASE [TiquiciaLodge2]"

  echo "Running PuraVida.sql..."
  /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -C -i /scripts/PuraVida.sql
  echo "Database initialization complete."

  touch /tmp/db-initialized

  wait "$pid"
else
  /opt/mssql/bin/sqlservr
fi
