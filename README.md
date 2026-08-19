# Sistema de Gestión de Préstamos de Equipos
> **Semana 5 — Modelo Relacional de Base de Datos**

Este repositorio contiene la implementación completa del modelo relacional para un sistema de control y administración de préstamos de equipos, incluyendo la arquitectura de datos en Mermaid, esquemas DDL en SQL, datos de prueba e integración con contenedores Docker.

---

##  Información Académica

* **Estudiante:** Louis Neil Voyer
* **Carné:** 2890-24-16741
* **Universidad:** Universidad Mariano Gálvez de Guatemala (UMG)
* **Facultad:** Ingeniería en Sistemas de Información y Ciencias de la Computación

---

##  Estructura del Modelo de Datos

El sistema está diseñado bajo una arquitectura relacional normalizada compuesta por 5 entidades principales:

1. **`PRESTATARIO`**: Registra los usuarios habilitados para solicitar equipos.
2. **`ESTADO_PRESTAMO`**: Catálogo de estados del préstamo (ej. *Activo*, *Devuelto*, *Atrasado*).
3. **`PRESTAMO`**: Cabecera de la transacción de préstamo con control de fechas clave.
4. **`EQUIPO`**: Catálogo de inventario de equipos disponibles.
5. **`DETALLE_PRESTAMO`**: Tabla intermedia que resuelve la relación muchos a muchos entre préstamos y equipos, registrando cantidades.

---

##  Archivos del Repositorio

| Archivo | Descripción |
| :--- | :--- |
| `modelo.mmd` | Diagrama Entidad-Relación (ER) escrito en sintaxis ejecutable de Mermaid. |
| `schema.sql` | Script DDL para la creación de tablas, relaciones y restricciones (`PK`, `FK`, `UK`). |
| `seed.sql` | Script DML con datos iniciales para pruebas de inserción e integridad. |
| `validation.sql` | Consultas SQL de validación y comprobación de integridad referencial. |
| `compose.yaml` | Archivo de orquestación para levantar la base de datos PostgreSQL en Docker. |
| `.env.ejemplo` | Plantilla de variables de entorno para configuración del contenedor. |

---

##  Guía de Despliegue Rápido

### 1. Clonar el repositorio
```bash
git clone https://github.com/lvoyerg-cloud/semana-5-modelo-relacional.git
cd semana-5-modelo-relacional
