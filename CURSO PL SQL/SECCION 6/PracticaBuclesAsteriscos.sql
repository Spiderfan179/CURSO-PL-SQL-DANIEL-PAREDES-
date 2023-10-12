DECLARE
NOMBRE VARCHAR(100):='Daniel de jesus paredes alvarez';
Asterisk varchar(100);
BEGIN

FOR i in 0..LENGTH(NOMBRE) LOOP
  
  Asterisk:=Asterisk || '*';
  
  
END LOOP;
dbms_output.put_line(Asterisk);

END;