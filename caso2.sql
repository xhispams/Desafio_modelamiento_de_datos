DROP TABLE alumnos;
DROP TABLE profesores;
DROP TABLE cursos;

CREATE TABLE cursos(
  id SERIAL,
  nombre VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE profesores(
  id SERIAL,
  nombre VARCHAR(50),
  departamento INT,
  PRIMARY KEY (id)
);

CREATE TABLE alumnos(
  id SERIAL,
  nombre VARCHAR(50),
  rut INT,
  cursos_id INT,
  profesores_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (cursos_id) REFERENCES cursos(id),
  FOREIGN KEY (profesores_id) REFERENCES profesores(id)
);
CREATE TABLE pruebas(
  id SERIAL,
  puntaje INT,
  alumnos_id INT,
  profesores_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (alumnos_id) REFERENCES alumnos (id),
  FOREIGN KEY (profesores_id) REFERENCES profesores (id)
);
