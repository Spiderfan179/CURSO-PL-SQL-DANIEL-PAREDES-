SET SERVEROUTPUT ON
DECLARE
duplicado EXCEPTION;
PRAGMA exception_init(duplicado,-00001);
BEGIN
INSERT INTO regions VALUES (1,'PRUEBA');
COMMIT;
EXCEPTION
WHEN duplicado THEN
DBMS_OUTPUT.PUT_LINE('Registro duplicado');
END;