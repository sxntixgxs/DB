-- Practica sentencias SQL en base al diagrama E-R desarrollado

CREATE SCHEMA campus_structure;

USE campus_structure;

CREATE TABLE trainer(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE camper(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
    fecha_ingreso DATE NOT NULL
);

CREATE TABLE salon(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE jornada(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    horario TEXT NOT NULL
);

CREATE TABLE ruta(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    main_language VARCHAR(50)
    framework VARCHAR(50)
);

CREATE TABLE grupo(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_trainer INT NOT NULL AUTO_INCREMENT,
    id_camper INT NOT NULL AUTO_INCREMENT,
    id_salon INT NOT NULL AUTO_INCREMENT,
-- jornada va en tabla aparte xq es N:M
    id_ruta INT NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (id_trainer) REFERENCES trainer(id),
    FOREIGN KEY (id_camper) REFERENCES camper(id),
    FOREIGN KEY (id_salon) REFERENCES salon(id),
    FOREIGN KEY (id_ruta) REFERENCES ruta(id)
);

CREATE TABLE jornada_grupo(
    id_jornada INT NOT NULL AUTO_INCREMENT,
    id_grupo INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_jornada,id_grupo),
    FOREIGN KEY (id_jornada) REFERENCES jornada(id),
    FOREIGN KEY (id_grupo) REFERENCES grupo(id)
);




