USE campus_structure;

CREATE TABLE tipo_persona(
    id INT NOT NULL PRIMARY KEY,
    cargo VARCHAR(15) NOT NULL
);

CREATE TABLE persona(
    id INT NOT NULL PRIMARY KEY,
    cedula VARCHAR(15) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    fecha_nacimiento DATETIME NOT NULL,
    genero VARCHAR(15) NOT NULL,
    tipo_persona INT NOT NULL,
    email VARCHAR(50),
    num_contacto VARCHAR(20),
    edad INT,
    FOREIGN KEY (tipo_persona) REFERENCES tipo_persona(id)
);