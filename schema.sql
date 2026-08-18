DROP TABLE IF EXISTS DETALLE_PRESTAMO CASCADE;
DROP TABLE IF EXISTS PRESTAMO CASCADE;
DROP TABLE IF EXISTS EQUIPO CASCADE;
DROP TABLE IF EXISTS PRESTATARIO CASCADE;
DROP TABLE IF EXISTS ESTADO_PRESTAMO CASCADE;

CREATE TABLE PRESTATARIO (
    id_prestatario INT GENERATED ALWAYS AS IDENTITY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    CONSTRAINT pk_prestatario PRIMARY KEY (id_prestatario),
    CONSTRAINT uk_prestatario_correo UNIQUE (correo)
);

CREATE TABLE EQUIPO (
    id_equipo INT GENERATED ALWAYS AS IDENTITY,
    codigo_equipo VARCHAR(50) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    CONSTRAINT pk_equipo PRIMARY KEY (id_equipo),
    CONSTRAINT uk_equipo_codigo UNIQUE (codigo_equipo)
);

CREATE TABLE ESTADO_PRESTAMO (
    id_estado INT GENERATED ALWAYS AS IDENTITY,
    nombre VARCHAR(30) NOT NULL,
    CONSTRAINT pk_estado_prestamo PRIMARY KEY (id_estado),
    CONSTRAINT uk_estado_prestamo_nombre UNIQUE (nombre)
);

CREATE TABLE PRESTAMO (
    id_prestamo INT GENERATED ALWAYS AS IDENTITY,
    id_prestatario INT NOT NULL,
    id_estado INT NOT NULL,
    fecha_prestamo DATE NOT NULL DEFAULT CURRENT_DATE,
    fecha_devolucion_prevista DATE NOT NULL,
    fecha_devolucion_real DATE NULL,
    CONSTRAINT pk_prestamo PRIMARY KEY (id_prestamo),
    CONSTRAINT fk_prestamo_prestatario FOREIGN KEY (id_prestatario) 
        REFERENCES PRESTATARIO (id_prestatario) ON DELETE RESTRICT,
    CONSTRAINT fk_prestamo_estado FOREIGN KEY (id_estado) 
        REFERENCES ESTADO_PRESTAMO (id_estado) ON DELETE RESTRICT,
    CONSTRAINT chk_prestamo_fechas CHECK (
        fecha_devolucion_real IS NULL OR fecha_devolucion_real >= fecha_prestamo
    )
);

CREATE TABLE DETALLE_PRESTAMO (
    id_prestamo INT NOT NULL,
    id_equipo INT NOT NULL,
    cantidad INT NOT NULL,
    CONSTRAINT pk_detalle_prestamo PRIMARY KEY (id_prestamo, id_equipo),
    CONSTRAINT fk_detalle_prestamo_prestamo FOREIGN KEY (id_prestamo) 
        REFERENCES PRESTAMO (id_prestamo) ON DELETE CASCADE,
    CONSTRAINT fk_detalle_prestamo_equipo FOREIGN KEY (id_equipo) 
        REFERENCES EQUIPO (id_equipo) ON DELETE RESTRICT,
    CONSTRAINT chk_detalle_cantidad_positiva CHECK (cantidad > 0)
);
