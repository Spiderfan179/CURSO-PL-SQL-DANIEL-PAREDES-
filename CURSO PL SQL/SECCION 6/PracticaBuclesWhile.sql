DECLARE

i number :=1;
j number :=1;
T Number :=1;

BEGIN

WHILE T <= 10 LOOP

j:= j+1;

if j >= 10 then
  j:=0;
  i:=i+1;
  
  elsif i >=10 then
   t:=t+1;
end if;

dbms_output.put_line(i || ' X ' || j || ' = ' || (i*j));

EXIT WHEN t = 10;
END LOOP;



END;