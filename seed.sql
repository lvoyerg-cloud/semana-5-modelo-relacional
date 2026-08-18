INSERT INTO PRESTATARIO (nombre, correo) VALUES
('Carlos Mendoza', 'carlos.mendoza@marianogalvez.edu.gt'),
('Ana Lucia Torres', 'ana.torres@marianogalvez.edu.gt');

INSERT INTO EQUIPO (codigo_equipo, nombre, categoria) VALUES
('CAM-001', 'Cámara Canon EOS R6', 'Fotografía/Video'),
('MIC-001', 'Micrófono Lavalier Rode', 'Audio'),
('TRI-001', 'Trípode Manfrotto Pro', 'Accesorios'),
('PRO-001', 'Proyector Epson 4K', 'Proyección');

INSERT INTO ESTADO_PRESTAMO (nombre) VALUES
('ACTIVO'),
('DEVUELTO'),
('ATRASADO');

INSERT INTO PRESTAMO (id_prestatario, id_estado, fecha_prestamo, fecha_devolucion_prevista, fecha_devolucion_real) VALUES
(1, 1, '2026-08-10', '2026-08-17', NULL),
(1, 2, '2026-08-01', '2026-08-05', '2026-08-04'),
(2, 1, '2026-08-15', '2026-08-22', NULL);

INSERT INTO DETALLE_PRESTAMO (id_prestamo, id_equipo, cantidad) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 1, 1),
(3, 4, 1);
