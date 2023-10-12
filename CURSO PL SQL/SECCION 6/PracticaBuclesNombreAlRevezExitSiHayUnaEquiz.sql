SET SERVEROUTPUT ON
DECLARE

NOMBRE VARCHAR2(100):='Danixel';
Revez varchar2(100);
i number:= LENGTH(NOMBRE);

BEGIN

WHILE i <> 0 LOOP

revez:= revez || substr(NOMBRE,i,1);

if i = 1 then
dbms_output.put_line(revez);

elsif UPPER(substr(NOMBRE,i,1)) = 'X' then
  
  dbms_output.put_line('Se interrumpio el bucle en ' || substr(NOMBRE,0,i));
  exit;

end if;

i:=i-1;
END LOOP;


END;