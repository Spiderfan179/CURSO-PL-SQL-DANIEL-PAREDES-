BEGIN
  
  for i IN 1..10 LOOP
    dbms_output.put_line('Tabla del ' || i);
   for j in 1..10 LOOP
       dbms_output.put_line(i ||' X ' || j || ' = ' || (i*j));
   END LOOP;
  
  END LOOP;
  
  

END;