SET SERVEROUTPUT ON
DECLARE
CONTROL_REGIONES EXCEPTION;
CODIGO NUMBER:=201;
BEGIN
IF CODIGO > 200 THEN
RAISE CONTROL_REGIONES;
ELSE
INSERT INTO REGIONS VALUES (CODIGO,'PRUEBA');
END IF;
EXCEPTION
WHEN CONTROL_REGIONES THEN
RAISE_APPLICATION_ERROR(-20001,'El codigo debe ser inferior a 200');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE(SQLCODE);
DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;