/*Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave 
primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS public.ciudades (
	id INT PRIMARY KEY,
	nombre VARCHAR (255),
	pais VARCHAR (255)
)
/*Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO public.ciudades (id, nombre, pais)
VALUES (1, 'Berlin','Alemania'),(2,'Menorca','España'),(3,'Tokyo','Japon')
/*Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".
*/
ALTER TABLE public.usuarios
ADD CONSTRAINT FK_usuarios_ciudades FOREIGN KEY (id)
REFERENCES ciudades (id);
/*Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT*FROM public.usuarios
LEFT JOIN public.ciudades
ON public.usuarios.nombre = public.ciudades.nombre
/*5.	Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).*/
SELECT*FROM public.usuarios
INNER JOIN public.ciudades
ON public.usuarios.nombre = public.ciudades.nombre