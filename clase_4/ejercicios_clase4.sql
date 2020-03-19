SELECT usuario.usuario,nombre FROM empleado
inner join  usuario on usuario.idempleado = empleado.idempleado ;

select email as correo from empleado
inner join usuario on usuario.idempleado=empleado.idempleado
and usuario.activo = 1;

select count(idpublicacion)from publicacion
where publicacion.autor like 'Eric G.%';

select sum(total) from venta
inner join empleado on venta.idempleado=empleado.idempleado
and empleado.nombre='Emilio'