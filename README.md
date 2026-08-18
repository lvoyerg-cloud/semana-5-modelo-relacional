# Sistema de Préstamos de Equipo Audiovisual

## Propósito
Solución relacional normalizada (3FN) para la gestión de préstamos de equipo audiovisual implementada en PostgreSQL con Docker Compose.

## Requisitos
* Docker Engine / Docker Desktop
* Git

## Uso
1. Configurar variables: `cp .env.example .env`
2. Iniciar base de datos: `docker compose up -d`
3. Ejecutar scripts en orden:
   * Esquema: `Get-Content schema.sql | docker exec -i postgres_audiovisual psql -U admin_user -d prestamos_db`
   * Carga: `Get-Content seed.sql | docker exec -i postgres_audiovisual psql -U admin_user -d prestamos_db`
   * Pruebas: `Get-Content validation.sql | docker exec -i postgres_audiovisual psql -U admin_user -d prestamos_db`

## Verificación
Para comprobar la conexión y usuario activo:
`docker exec -it postgres_audiovisual psql -U admin_user -d prestamos_db -c "\conninfo"`
