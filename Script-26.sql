use Tes;

SELECT 
FROM citas c 
join medicos m on m.id_doctor = c.id_cita;

 -- 2. Total de días de vacaciones planificadas y disfrutadas por cada empleado.
SELECT e.Nombre , v.dias_de_planificacion , v.disfrutadas 
FROM vacaciones v 
JOIN empleados e ON e.id_empleado = v.id ;


-- 3. Médicos con mayor cantidad de horas de consulta en la semana.
SELECT   m.Nombre, MAX(c.horas_trabajadas) as horas_de_consulta
FROM citas c 
join medicos m on m.id_doctor = c.id_cita
GROUP BY  m.Nombre 
ORDER BY  MAX(c.horas_trabajadas)  DESC;


-- 4 Número de sustituciones realizadas por cada médico sustituto.

SELECT m.Nombre , m.tipo , c.periodo_sustitucion 
FROM citas c 
join medicos m on m.id_doctor = c.id_cita
WHERE m.tipo = 'sustituto';

-- 5. Número de médicos que están actualmente en sustitución.
 SELECT tipo ,  COUNT(tipo) as cantidad
 FROM medicos 
 WHERE tipo = 'sustituto';
 
-- 6. Horas totales de consulta por médico por día de la semana.

-- 7. Médico con mayor cantidad de pacientes asignados.
 
SELECT
FROM citas c 
join medicos m on m.id_doctor = c.id_cita
GROUP BY c.cc
HAVING c.cc >
 
 
 
 
 
 
 
 
 