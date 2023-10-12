SET SERVEROUTPUT ON

DECLARE

A NUMBER:=11;

BEGIN

if MOD(A,2)=0 then

dbms_output.put_line(A ||' es par');

else

dbms_output.put_line(A||' es impar');

end if;


END;