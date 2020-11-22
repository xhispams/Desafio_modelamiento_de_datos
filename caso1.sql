CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE trabajadores(
    id SERIAL,
    nombre VARCHAR (50),
    rut INT NOT NULL,
    direccion VARCHAR NOT NULL,
    departamentos_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (departamentos_id) REFERENCES departamentos (id),
);

CREATE TABLE liquidaciones(
    id SERIAL,
    fecha DATE NOT NULL,
    trabajadores_id INT NOT NULL,
    drive  VARCHAR NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (trabajadores_id) REFERENCES trabajadores (id)
);
