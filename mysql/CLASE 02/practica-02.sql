CREATE SCHEMA IF NOT EXISTS parques;

USE parques;

CREATE TABLE IF NOT EXISTS entidad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS departamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    id_entidad INT,
    FOREIGN KEY (id_entidad) REFERENCES entidad(id)
);

CREATE TABLE IF NOT EXISTS parque(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    fecha_apertura DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS depto_parque(
    id_parque INT,
    id_entidad INT,
    FOREIGN KEY(id_parque) REFERENCES parque(id),
    FOREIGN KEY(id_entidad) REFERENCES entidad(id),
    PRIMARY KEY (id_parque,id_entidad)
);

CREATE TABLE IF NOT EXISTS area_parque(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    extension DECIMAL NOT NULL,
    id_parque INT,
    FOREIGN KEY (id_parque) REFERENCES parque(id)
);

CREATE TABLE IF NOT EXISTS tipo_especie(
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS especie(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cientifico VARCHAR(40) NOT NULL,
    nombre_vulgar VARCHAR(40) NOT NULL,
    ejemplares INT NOT NULL,
    id_area_parque INT,
    id_tipo_especie INT,
    FOREIGN KEY (id_area_parque) REFERENCES area_parque(id),
    FOREIGN KEY (id_tipo_especie) REFERENCES tipo_especie(id)
);

CREATE TABLE IF NOT EXISTS trabajador(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    cc INT,
    direccion VARCHAR(45),
    sueldo INT,
    id_parque INT,
    FOREIGN KEY (id_parque) REFERENCES parque(id)
);

CREATE TABLE IF NOT EXISTS telefono(
    id INT PRIMARY KEY AUTO_INCREMENT,
    num_fijo INT NOT NULL,
    num_movil INT NOT NULL,
    id_trabajador INT,
    FOREIGN KEY (id_trabajador) REFERENCES trabajador(id)
);

CREATE TABLE IF NOT EXISTS gestion_trabajador(
    id INT PRIMARY KEY AUTO_INCREMENT,
    entrada_parque VARCHAR(45) NOT NULL,
    id_trabajador INT,
    id_area_parque INT,
    FOREIGN KEY (id_trabajador) REFERENCES trabajador(id),
    FOREIGN KEY (id_area_parque) REFERENCES area_parque(id)
);

CREATE TABLE IF NOT EXISTS entrada(
    id INT PRIMARY KEY AUTO_INCREMENT,
    num_entrada INT NOT NULL,
    ubicacion VARCHAR(45) NOT NULL,
    id_parque INT,
    FOREIGN KEY (id_parque) REFERENCES parque(id)
);

-- data

-- Inserting data into the entidad table
INSERT INTO entidad (nombre) VALUES ('Ministerio de Ambiente y Desarrollo Sostenible');
INSERT INTO entidad (nombre) VALUES ('Parques Nacionales Naturales de Colombia');

-- Inserting data into the departamento table
INSERT INTO departamento (nombre, id_entidad) VALUES ('Amazonas', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Antioquia', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Boyacá', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Caldas', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Caquetá', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Cauca', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Magdalena', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Meta', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Nariño', 2);
INSERT INTO departamento (nombre, id_entidad) VALUES ('Putumayo', 2);

-- Inserting data into the parque table
INSERT INTO parque (nombre, fecha_apertura) VALUES ('Parque Nacional Natural Tayrona', '2005-11-17');
INSERT INTO parque (nombre, fecha_apertura) VALUES ('Parque Nacional Natural Los Nevados', '1974-08-23');
INSERT INTO parque (nombre, fecha_apertura) VALUES ('Parque Nacional Natural Amacayacu', '1975-07-02');
INSERT INTO parque (nombre, fecha_apertura) VALUES ('Parque Nacional Natural El Cocuy', '1977-12-20');
INSERT INTO parque (nombre, fecha_apertura) VALUES ('Parque Nacional Natural Chiribiquete', '1989-06-21');

-- Inserting data into the area_parque table
INSERT INTO area_parque (nombre, extension, id_parque) VALUES ('Zona Costera', 1500.75, 1);
INSERT INTO area_parque (nombre, extension, id_parque) VALUES ('Nevados', 2000.50, 2);
INSERT INTO area_parque (nombre, extension, id_parque) VALUES ('Selva Amazónica', 3000.25, 3);
INSERT INTO area_parque (nombre, extension, id_parque) VALUES ('Páramo', 1000.75, 4);
INSERT INTO area_parque (nombre, extension, id_parque) VALUES ('Serranía', 2500.00, 5);
