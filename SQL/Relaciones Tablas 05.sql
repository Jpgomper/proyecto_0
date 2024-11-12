
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.

select "Name" , "Title"
from "Track" as T
inner join "Album" as A
on T."AlbumId" = A."AlbumId";


-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.

select a2."Name" , a."Title"
from "Album" as a
inner join "Artist" as a2 
on a."ArtistId" = a2."ArtistId" 
order by "Name" asc ;


-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 

select concat(c."FirstName",'',c."LastName") as Nombre_cliente , sum("Total") as total
from "Invoice" as i
inner join "Customer" as c
on i."CustomerId" = c."CustomerId" 
group by c."FirstName" , c."LastName"
order by "total" desc 
limit 5 ;



-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.

select concat(e."First_Name", ' ' ,e."Last_Name") as nombre_empleado, 
       concat(c."FirstName", ' ', c."LastName") as nombre_cliente  
from "Customer" as c 
inner join "Employee" as e 
on c."SupportRepId" = e."EmployeeId"
order by e."First_Name" ;


-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.

select "InvoiceId" , "Name" 
from "InvoiceLine" as il
inner join "Track" as t
on il."TrackId" = t."TrackId";



-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.


select a2."Name" as Nombre_artista , g."Name" as genero
from "Track"  as t  
inner join "Album" as a 
on t."AlbumId" = a."AlbumId" 
inner join "Artist" as a2
on a."ArtistId" = a2."ArtistId" 
inner join "Genre" as g
on t."GenreId" = g."GenreId" 
group by a2."Name" , g."Name" 
order by a2."Name" ;



--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.


select t."Name" as nombre_pista , mt."Name" as medio 
from "Track" as t
inner join "MediaType" as mt
on t."MediaTypeId" = mt."MediaTypeId" ;



-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**

select t."Name" as nombre_pista , g."Name" as genero 
from "Track" as t
left join "Genre" as g
on t."GenreId" = g."GenreId" ;



-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.


select concat(c."FirstName" , ' ' ,c."LastName") as nombre_cliente, i."Total" as factura  
from "Customer" as c
left join "Invoice" as i
on c."CustomerId" = i."CustomerId" ;

select * from "Invoice" ;


-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).

select  a."Title" as nombre_album , a2."Name" as nombre_artista
from "Album" as a 
left join "Artist" as a2
on a."ArtistId" = a2."ArtistId" ;



-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 

select g."Name"  as genero , count(t."TrackId") as numero_tracks
from "Track" as t
inner join "Genre" as g
on t."GenreId" = g."GenreId" 
group by g."Name" 
order by count(t."TrackId") desc;


--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.

select a."Title" as nombre_album , sum(t."Milliseconds") / 1000 / 60 as suma_minutos
from "Track" as t
inner join "Album" as a
on t."AlbumId" = a."AlbumId" 
group by a."Title" ;


-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.

select concat(c."FirstName" , ' ' ,c."LastName") as nombre_cliente , sum(i."Total") as total_facturas
from "Invoice" as i
inner join "Customer" as c
on i."CustomerId" = c."CustomerId" 
group by concat(c."FirstName" , ' ' ,c."LastName") ;



-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.

select concat(e."First_Name", ' ' ,e."Last_Name") as nombre_empleado, concat(c."FirstName" , ' ' ,c."LastName") as nombre_cliente 
from "Employee" as e
left join "Customer" as c
on e."EmployeeId" = c."SupportRepId" 
order by e."First_Name" ;






