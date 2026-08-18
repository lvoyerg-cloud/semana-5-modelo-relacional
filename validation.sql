-- 1. Prueba de duplicado de correo (UNIQUE)
INSERT INTO PRESTATARIO (nombre, correo) 
VALUES ('Juan Perez', 'carlos.mendoza@marianogalvez.edu.gt');

-- 2. Prueba de cantidad invalida (CHECK)
INSERT INTO DETALLE_PRESTAMO (id_prestamo, id_equipo, cantidad) 
VALUES (1, 2, 0);

-- 3. Prueba de relacion inexistente (FOREIGN KEY)
INSERT INTO PRESTAMO (id_prestatario, id_estado, fecha_prestamo, fecha_devolucion_prevista) 
VALUES (999, 1, '2026-08-18', '2026-08-25');
