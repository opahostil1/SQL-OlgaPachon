/*Crea una base de datos llamada "MiBaseDeDatos"*/
CREATE DATABASE MiBaseDeDatos
/*Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave 
primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE IF NOT EXISTS public.usuarios (
	id INT PRIMARY KEY,
	nombre VARCHAR (255),
	edad INT
)
/*Inserta dos registros en la tabla "Usuarios"*/
INSERT INTO public.usuarios (id, nombre, edad)
VALUES (1,'Pedro', 21)
INSERT INTO public.usuarios (id, nombre, edad)
VALUES (2,'Juan', 32)
/*Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE public.usuarios
SET edad = 34
WHERE id = 1;
/*Elimina un usuario de la tabla "Usuarios"*/
DELETE FROM public.usuarios
WHERE id = 2;
