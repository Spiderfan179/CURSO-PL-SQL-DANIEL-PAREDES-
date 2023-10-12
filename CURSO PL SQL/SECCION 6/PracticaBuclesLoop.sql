DECLARE

i number:=0;
j number:=0;
T number :=0;

BEGIN

--tabla 1 al 10
<<parent>>
LOOP 


Exit parent when T = 11;

<<child>>
LOOP

j:=j+1;
dbms_output.put_line(i || ' X ' || j ||' = ' || (i*j));

if j =10 then 
   j:=0;
   i:=i+1; 
   EXIT;
end if;

END LOOP;

T:=T+1;
dbms_output.put_line('Esta es la Tabla del  ' || T);

  

END LOOP;


END;