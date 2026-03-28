

USE medisistema_db;

-- 1. Número de pacientes atendidos por cada médico.
SELECT e.nombre AS medico, COUNT(p.id_paciente) AS total_pacientes
FROM Medicos m
JOIN Empleados e ON m.id_medico = e.id_empleado
LEFT JOIN Pacientes p ON m.id_medico = p.id_medico_asignado
GROUP BY m.id_medico, e.nombre;

-- 2. Total de días de vacaciones planificadas y disfrutadas por cada empleado.
SELECT e.nombre, SUM(v.dias_planificados) AS total_planificadas, SUM(v.dias_disfrutados) AS total_disfrutadas
FROM Empleados e
JOIN Vacaciones v ON e.id_empleado = v.id_empleado
GROUP BY e.id_empleado, e.nombre;

-- 3. Médicos con mayor cantidad de horas de consulta en la semana.
SELECT e.nombre, SUM(h.horas_consulta) AS total_horas_semanales
FROM Medicos m
JOIN Empleados e ON m.id_medico = e.id_empleado
JOIN Horarios h ON m.id_medico = h.id_medico
GROUP BY m.id_medico, e.nombre
ORDER BY total_horas_semanales DESC;

-- 4. Número de sustituciones realizadas por cada médico sustituto.
SELECT e.nombre AS medico_sustituto, COUNT(s.id_sustitucion) AS total_sustituciones
FROM Sustituciones s
JOIN Empleados e ON s.id_medico_sustituto = e.id_empleado
GROUP BY s.id_medico_sustituto, e.nombre;

-- 5. Número de médicos que están actualmente en sustitución.
SELECT COUNT(DISTINCT id_medico_sustituido) AS medicos_siendo_sustituidos
FROM Sustituciones
WHERE activa = TRUE;

-- 6. Horas totales de consulta por médico por día de la semana.
SELECT e.nombre, h.dia_semana, SUM(h.horas_consulta) AS horas_dia
FROM Medicos m
JOIN Empleados e ON m.id_medico = e.id_empleado
JOIN Horarios h ON m.id_medico = h.id_medico
GROUP BY e.nombre, h.dia_semana;

-- 7. Médico con mayor cantidad de pacientes asignados.
SELECT e.nombre, COUNT(p.id_paciente) AS total_pacientes
FROM Medicos m
JOIN Empleados e ON m.id_medico = e.id_empleado
LEFT JOIN Pacientes p ON m.id_medico = p.id_medico_asignado
GROUP BY m.id_medico, e.nombre
ORDER BY total_pacientes DESC
LIMIT 1;

-- 8. Empleados con más de 10 días de vacaciones disfrutadas.
SELECT e.nombre, v.dias_disfrutados
FROM Empleados e
JOIN Vacaciones v ON e.id_empleado = v.id_empleado
WHERE v.dias_disfrutados > 10;

-- 9. Médicos que actualmente están realizando una sustitución.
SELECT DISTINCT e.nombre AS medico_sustituto_activo
FROM Sustituciones s
JOIN Empleados e ON s.id_medico_sustituto = e.id_empleado
WHERE s.activa = TRUE;

-- 10. Total de días de vacaciones planificadas y disfrutadas por cada tipo de empleado.
SELECT e.tipo_empleado, SUM(v.dias_planificados) AS total_planificadas, SUM(v.dias_disfrutados) AS total_disfrutadas
FROM Empleados e
JOIN Vacaciones v ON e.id_empleado = v.id_empleado
GROUP BY e.tipo_empleado;

-- 11. Total de pacientes por cada tipo de médico.
SELECT m.tipo_medico, COUNT(p.id_paciente) AS total_pacientes
FROM Medicos m
LEFT JOIN Pacientes p ON m.id_medico = p.id_medico_asignado
GROUP BY m.tipo_medico;

-- 12. Número de sustituciones por tipo de médico.
-- (Entendiendo el tipo del médico que fue sustituido)
SELECT m.tipo_medico, COUNT(s.id_sustitucion) AS total_sustituciones
FROM Sustituciones s
JOIN Medicos m ON s.id_medico_sustituido = m.id_medico
GROUP BY m.tipo_medico;

-- 13. Total de pacientes por médico y por especialidad.
SELECT e.nombre, m.especialidad, COUNT(p.id_paciente) AS total_pacientes
FROM Medicos m
JOIN Empleados e ON m.id_medico = e.id_empleado
LEFT JOIN Pacientes p ON m.id_medico = p.id_medico_asignado
GROUP BY e.nombre, m.especialidad;

-- 14. Empleados y médicos con más de 20 días de vacaciones planificadas.
SELECT e.nombre, e.tipo_empleado, v.dias_planificados
FROM Empleados e
JOIN Vacaciones v ON e.id_empleado = v.id_empleado
WHERE v.dias_planificados > 20;

-- 15. Total de horas de consulta por especialidad y día de la semana.
SELECT m.especialidad, h.dia_semana, SUM(h.horas_consulta) AS total_horas
FROM Medicos m
JOIN Horarios h ON m.id_medico = h.id_medico
GROUP BY m.especialidad, h.dia_semana;
 
 
 
 
 
 
