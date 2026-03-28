USE medisistema_db;

-- 1. Insertar Empleados (Mezcla de Médicos y Administrativos)
INSERT INTO Empleados (nombre, tipo_empleado, fecha_ingreso) VALUES
('Carlos Ruiz', 'Medico', '2020-01-15'),
('Ana Gomez', 'Medico', '2021-03-22'),
('Luis Perez', 'Medico', '2019-11-05'),
('Marta Lopez', 'Medico', '2022-05-10'),
('Juan Torres', 'Medico', '2023-01-20'),
('Elena Beltran', 'Medico', '2020-08-14'),
('Roberto Cano', 'Administrativo', '2021-06-01'),
('Lucia Mendez', 'Medico', '2022-09-15'),
('Diego Arias', 'Medico', '2023-02-11'),
('Sofia Rojas', 'Administrativo', '2018-12-01');

-- 2. Insertar Médicos (Usando los IDs de los empleados tipo 'Medico')
-- IDs: 1, 2, 3, 4, 5, 6, 8, 9
INSERT INTO Medicos (id_medico, especialidad, tipo_medico) VALUES
(1, 'Pediatria', 'Titular'),
(2, 'Cardiologia', 'Interino'),
(3, 'General', 'Titular'),
(4, 'Pediatria', 'Sustituto'),
(5, 'Dermatologia', 'Interino'),
(6, 'General', 'Sustituto'),
(8, 'Ginecologia', 'Titular'),
(9, 'Cardiologia', 'Sustituto');

-- 3. Insertar Pacientes (Asignados a los médicos anteriores)
INSERT INTO Pacientes (nombre, id_medico_asignado) VALUES
('Pedro Marmol', 1),
('Vilma Picapiedra', 1),
('Pablo Marmol', 2),
('Betty Marmol', 3),
('Hugo Sanchez', 3),
('Paco Gonzalez', 3),
('Luis Miguel', 5),
('Rosalia Vila', 8),
('C Tangana', 8),
('Karol G', 1);

-- 4. Horarios de Consulta (Para calcular horas semanales)
INSERT INTO Horarios (id_medico, dia_semana, horas_consulta) VALUES
(1, 'Lunes', 6), (1, 'Martes', 6), (1, 'Miercoles', 4),
(2, 'Lunes', 8), (2, 'Jueves', 8),
(3, 'Martes', 5), (3, 'Viernes', 5),
(5, 'Miercoles', 7),
(8, 'Lunes', 4), (8, 'Viernes', 4);

-- 5. Vacaciones (Planificadas y disfrutadas)
-- Incluimos algunos con >10 disfrutadas y >20 planificadas para las consultas 8 y 14
INSERT INTO Vacaciones (id_empleado, dias_planificados, dias_disfrutados, estado_en_curso) VALUES
(1, 25, 12, FALSE),
(2, 15, 5, TRUE),
(3, 22, 11, FALSE),
(4, 10, 0, FALSE),
(5, 30, 15, FALSE),
(6, 12, 12, FALSE),
(7, 21, 5, FALSE),
(8, 18, 10, TRUE),
(9, 5, 2, FALSE),
(10, 25, 20, FALSE);

-- 6. Sustituciones
-- Importante para las consultas 4, 5, 9 y 12
INSERT INTO Sustituciones (id_medico_sustituido, id_medico_sustituto, fecha_inicio, fecha_fin, activa) VALUES
(1, 4, '2026-03-01', '2026-03-15', FALSE),
(2, 9, '2026-03-20', '2026-04-20', TRUE),
(3, 6, '2026-03-25', '2026-04-05', TRUE),
(8, 4, '2026-05-01', '2026-05-15', FALSE);


