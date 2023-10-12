DECLARE

inicio number:=1;
fin number:=30;


BEGIN

for i in inicio+1..fin-1 LOOP

if MOD(i,4)=0 then
dbms_output.put_line('Multiplos de 4 '||i);
end if; 
END LOOP;



END;