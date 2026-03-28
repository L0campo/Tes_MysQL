



CREATE DATABASE IF NOT EXISTS medisistema_db;
USE medisistema_db;

-- 1. Tabla de Empleados (Base para médicos y administrativo)
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_empleado ENUM('Medico', 'Administrativo', 'Mantenimiento') NOT NULL,
    fecha_ingreso DATE NOT NULL
);

-- 2. Tabla de Médicos (Especialización de Empleados)
CREATE TABLE Medicos (
    id_medico INT PRIMARY KEY,
    especialidad VARCHAR(50) NOT NULL,
    tipo_medico ENUM('Titular', 'Interino', 'Sustituto') NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Empleados(id_empleado)
);

-- 3. Tabla de Pacientes
CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_medico_asignado INT,
    FOREIGN KEY (id_medico_asignado) REFERENCES Medicos(id_medico)
);

-- 4. Horarios de Consulta
CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT,
    dia_semana ENUM('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'),
    horas_consulta INT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico)
);

-- 5. Gestión de Vacaciones
CREATE TABLE Vacaciones (
    id_vacacion INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT,
    dias_planificados INT DEFAULT 0,
    dias_disfrutados INT DEFAULT 0,
    estado_en_curso BOOLEAN DEFAULT FALSE, 
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

-- 6. Sustituciones
CREATE TABLE Sustituciones (
    id_sustitucion INT AUTO_INCREMENT PRIMARY KEY,
    id_medico_sustituido INT,
    id_medico_sustituto INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    activa BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_medico_sustituido) REFERENCES Medicos(id_medico),
    FOREIGN KEY (id_medico_sustituto) REFERENCES Medicos(id_medico)
);
















