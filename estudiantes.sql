-- Eliminar tabla
drop table estudiantes

-- crear tabla 

CREATE TABLE estudiantes (
    id_estudiante INT ,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10),
	constraint estudiantes_pk primary key (id_estudiante)
);

--Parte 3 — Inserción de Datos

INSERT INTO estudiantes VALUES (1, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10');
INSERT INTO estudiantes VALUES (2, 'Maria', 'Lopez', 22, 'Base de Datos', '2026-02-15');
INSERT INTO estudiantes VALUES (3, 'Carlos', 'Gomez', 19, 'Programacion', '2026-03-20');
INSERT INTO estudiantes VALUES (4, 'Ana', 'Martinez', 24, 'Redes', '2026-01-25');
INSERT INTO estudiantes VALUES (5, 'Luis', 'Rodriguez', 21, 'Base de Datos', '2026-04-01');
INSERT INTO estudiantes VALUES (6, 'Laura', 'Fernandez', 23, 'Programacion', '2026-02-28');
INSERT INTO estudiantes VALUES (7, 'Pedro', 'Sanchez', 18, 'Redes', '2026-05-05');
INSERT INTO estudiantes VALUES (8, 'Sofia', 'Ramirez', 26, 'Base de Datos', '2026-03-15');
INSERT INTO estudiantes VALUES (9, 'Diego', 'Torres', 20, 'Programacion', '2026-01-30');
INSERT INTO estudiantes VALUES (10, 'Valentina', 'Flores', 27, 'Inteligencia Artificial', '2026-04-20');
INSERT INTO estudiantes VALUES (11, 'Andres', 'Mendoza', 19, 'Base de Datos', '2026-02-10');
INSERT INTO estudiantes VALUES (12, 'Camila', 'Ortega', 22, 'Programacion', '2026-03-25');
INSERT INTO estudiantes VALUES (13, 'Javier', 'Silva', 25, 'Redes', '2026-05-12');
INSERT INTO estudiantes VALUES (14, 'Daniela', 'Castro', 21, 'Inteligencia Artificial', '2026-04-18');
INSERT INTO estudiantes VALUES (15, 'Ricardo', 'Vargas', 24, 'Base de Datos', '2026-01-05');

-- Parte 4 — Consultas SELECT

select * from estudiantes
select nombres, curso from estudiantes
select * from estudiantes where edad>18 and edad<25
select * from estudiantes where curso='Base de Datos'
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30'

-- Parte 5 — UPDATE

UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;

UPDATE estudiantes SET edad = 21 WHERE id_estudiante = 2;

UPDATE estudiantes SET fecha_registro = '2026-05-15' WHERE id_estudiante = 3;

UPDATE estudiantes SET nombres = 'Jorge', apellidos = 'Reyes', edad = 23 WHERE id_estudiante = 4;

UPDATE estudiantes SET curso = 'Programacion Avanzada' WHERE curso = 'Programacion';

--Parte 6 — DELETE

DELETE FROM estudiantes where  id_estudiante = 4; 
DELETE FROM estudiantes where  curso = 'Programacion Avanzada';
DELETE FROM estudiantes where  edad = 22;
DELETE FROM estudiantes where  fecha_registro>'2026-04-30';
DELETE FROM estudiantes where  nombres='Sofia';


