CREATE TABLE tipos_de_documento(
    id_documento VARCHAR(2) PRIMARY KEY,
    nombre_documento VARCHAR(20) NOT NULL
);

CREATE TABLE estudiantes(
    codigo_estudiante VARCHAR(10) PRIMARY KEY,
    id_documento VARCHAR(2) NOT NULL,
    nombre_estudiante VARCHAR(50) NOT NULL,
    apellido_estudiante VARCHAR(50) NOT NULL,
    numero_documento VARCHAR(10) NOT NULL,
    estado_estudiante CHAR(1) NOT NULL,
    genero_estudiante CHAR(1) NOT NULL,
    CONSTRAINT fk_id_documento FOREIGN KEY(id_documento) REFERENCES tipos_de_documento(id_documento)
);

CREATE TABLE materias(
    codigo_materia VARCHAR(10) PRIMARY KEY,
    nombre_materia VARCHAR(50) NOT NULL,
    cupos_materia NUMERIC NOT NULL,
    estados  CHAR(1) NOT NULL
);

CREATE TABLE inscripciones(
    codigo_estudiante VARCHAR(10) NOT NULL,
    codigo_materia VARCHAR(10) NOT NULL,
    fecha_inscripcion DATETIME NOT NULL
    CONSTRAINT fk_codigo_estudiante FOREIGN KEY (codigo_estudiante) REFERENCES estudiantes(codigo_estudiante),
    CONSTRAINT fk_codigo_materia FOREIGN KEY (codigo_materia) REFERENCES materias(codigo_materia)
);
