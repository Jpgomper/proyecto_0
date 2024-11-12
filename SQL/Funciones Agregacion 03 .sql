
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select * from "Track" t ;
select min("Milliseconds") from "Track" t; 

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.

select max("Milliseconds") from "Track" t;

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
   
select min("UnitPrice") from "Track" t; 

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
   
select max("UnitPrice") from "Track" t;

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
   select * from "Invoice" i ;
  select min("InvoiceDate") from "Invoice" i ; 


-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select max("InvoiceDate") from "Invoice" i ; 
   

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select * from "Track" t ;

select count("TrackId") as "Numero_Total" from "Track" t ;
   

-- Ejercicio 8: Contar el número de clientes en Brasil.
select * from "Customer" c ;

select count("CustomerId") as "Total_From_Brazil" from "Customer" c where "Country" = 'Brazil'; 

   

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.


select sum("Milliseconds") as "Suma_milisegundos" from "Track" t ;
   

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select * from "Employee" e  ;

select count("EmployeeId") as "Total_SSA" from "Employee" e  where "Title" = 'Sales Support Agent'; 

    

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
    
select * from "Invoice" i ;

select sum("Total") as "Total_facturas" from "Invoice" i ;


/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.

select round(avg("Milliseconds"),2) as "AVG_milisegundos" from "Track" t ;
    

-- Ejercicio 13: Calcular el precio medio de las pistas.
select * from "Track" t ;
select round(avg("UnitPrice"),3) as "AVG_Price" from "Track" t ;
    

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
    
select round(stddev("Milliseconds"),3) as "STDD_milisegundos" from "Track" t ;

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.

select round(variance("Milliseconds")) as "VAR_milisegundos" from "Track" t ;


-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.

select round(stddev("UnitPrice"),4) as "STDD_Price" from "Track" t ;


/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.

select * from "Customer" c ;

select concat("FirstName", ' ', "LastName") as "Nombre_Completo" 
from "Customer" c ;

