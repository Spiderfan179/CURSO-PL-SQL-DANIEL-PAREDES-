SET SERVEROUTPUT ON;

DECLARE
    x        CONSTANT NUMBER := 10;
    z        NUMBER NOT NULL := 20;
    name     VARCHAR2(100);
    lastname VARCHAR2(100);
BEGIN
    name := 'JOHN';
    lastname := ' CONNORS';
    dbms_output.put_line(name || lastname);
    dbms_output.put_line(x);
    dbms_output.put_line(z);
END;