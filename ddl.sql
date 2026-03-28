
create database if not exists Tes;

use Tes;


CREATE table medicos (
	id_doctor int  primary key,
	Nombre varchar (50),
	tipo varchar (100)
);

CREATE  table pacientes (
	cc int primary key,
	Nombre varchar (50),
	edad int 
 );
 

CREATE  table empleados (
	id_empleado int primary key,
	Nombre varchar (50),
	edad int ,
	trabajo varchar (100)
	
 );
 
CREATE table vacaciones (
	id int ,
	id_doctor int not null,
	id_empleado  int not null,
	dias_de_planificacion int,
	disfrutadas varchar (10),
	primary key(id_doctor, id_empleado, id),
	foreign key (id_doctor) references medicos (id_doctor) on DELETE  restrict,
	foreign key (id_empleado) references empleados (id_empleado) on DELETE  restrict
);


CREATE table if not exists citas (
	id_cita int ,
	id_doctor int not null,
	cc  int not null,
	periodo_sustitucion int,
	horas_trabajadas int,
	id_de_remplazo int,
	primary key(id_doctor, cc , id_cita ),
	foreign key (id_doctor) references medicos (id_doctor) on DELETE  restrict,
	foreign key (cc ) references  pacientes(cc ) on DELETE  restrict
);


















