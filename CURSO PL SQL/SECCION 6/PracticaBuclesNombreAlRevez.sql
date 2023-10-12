SET SERVEROUTPUT ON
DECLARE

NOMBRE VARCHAR2(100):='Daniel';
Revez varchar2(100);
i number:= LENGTH(NOMBRE);

BEGIN

WHILE i <> 0 LOOP

revez:= revez || substr(NOMBRE,i,1);

if i = 1 then
dbms_output.put_line(revez);
end if;

i:=i-1;
END LOOP;


END;