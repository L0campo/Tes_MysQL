
use Tes;

INSERT INTO medicos (id_doctor, Nombre, tipo) values 
(1, 'Luna', 'titular'),
(2, 'Martin', 'interino'),
(3, 'Jorge', 'sustituto'),
(4, 'Maria', 'sustituto'),
(5 , 'Victhor', 'interino'),
(6, 'juan', 'titular'),
(7, 'shirly', 'titular'),
(8, 'David', 'sustituto'),
(9, 'Brayan', 'interino'),
(10, 'Luis', 'titular');

INSERT INTO medicos (id_doctor, Nombre, tipo) values 
(00, NULL, NULL);

INSERT INTO pacientes (cc, Nombre, edad) values 
(1,'Camposs', 20),
(2, 'Carlos' , 19),
(3, 'paula', 18),
(4, 'Pedro', 60),
(5, 'Messi', 43),
(6, 'Carmen', 33);

INSERT INTO empleados (id_empleado, Nombre, edad, trabajo) values 

(1, 'Camilo', 37, 'Guardia'),
(2, 'Andres', 27, 'Limpieza'),
(3, 'Cruz', 32, 'Limpieza'),
(4, 'Rosa', 36, 'Cafeteria'),
(5, 'Ramon', 22, 'Guardia'),
(6, 'jeni', 21, 'Enfermera'),
(7, 'Jaime', 37, 'Guardia');



INSERT INTO empleados (id_empleado, Nombre, edad, trabajo) values 
(00, NULL, NULL, NULL);

INSERT INTO vacaciones (id, id_doctor , id_empleado, dias_de_planificacion,disfrutadas) values 
(1, 1,00 ,11,'SI'),
(2, 3, 00,2,'NO'),
(3, 00, 3,14,'NO'),
(4, 00, 4,1,'SI'),
(5, 10, 00,8,'NO'),
(6, 00, 7,9,'SI'),
(7, 7, 00,30,'SI'),
(8, 00, 1,5,'NO'),
(9, 5, 00,7,'SI');




INSERT INTO citas (id_cita, id_doctor, cc, periodo_sustitucion,horas_trabajadas) values
(1,1,4,2,4),
(2,2,3,2,8),
(3,3,3,2,23),
(4,4,6,2,4),
(5,5,5,2,5),
(6,6,1,2,8),
(7,7,1,2,2);

INSERT INTO citas (id_cita, id_doctor, cc, periodo_sustitucion,horas_trabajadas) values

(8,1,4,2,4),
(9,1,3,2,4),
(10,1,4,2,4),
(11,1,5,2,4);















































