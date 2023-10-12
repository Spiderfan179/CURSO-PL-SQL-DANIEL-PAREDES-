SET SERVEROUTPUT ON

DECLARE

TIPO_PRODUCTO CHAR(1):='f';

BEGIN

if UPPER(tipo_producto) = 'A' then

dbms_output.put_line('Electronica');

elsif Upper(tipo_producto)='B' then

dbms_output.put_line('Informatica');

elsif upper(tipo_producto)='C' then

dbms_output.put_line('Ropa');

elsif upper(tipo_producto)='D' then
dbms_output.put_line('Musica');

elsif upper(tipo_producto)='E'
then
dbms_output.put_line('Libros');

ELSE 
dbms_output.put_line('Codrigo incorrecto');

end if;

END;
