# Clase 4
## Primera Consulta ##
Mostrar el usuario y nombre de los empleados.
```sql
SELECT usuario.usuario,nombre FROM empleado
inner join  usuario on usuario.idempleado = empleado.idempleado ;
```
## Segunda Consulta ##
Mostrar el atributo email como correo, de los usuarios activos.
```sql
select email as correo from empleado
inner join usuario on usuario.idempleado=empleado.idempleado
and usuario.activo = 1;
```
## Tercera Consulta ##
Contar las publicaciones que hizo 'Eric G. Coronel Castillo'.
```sql
select count(idpublicacion)from publicacion
where publicacion.autor like 'Eric G.%';
```
## Cuarta Consulta ##
Sumar los precios de las ventas del empleado EMILIO.
```sql
select sum(total) from venta
inner join empleado on venta.idempleado=empleado.idempleado
and empleado.nombre='Emilio'
```