SET SERVEROUTPUT ON

-- TODOS LOS VALORES DE X SON VISUALIZADOS DESDE EL DECLARE PADRE YA QUE
--ES EL UNICO DEFINIDO Y SE PUEDE USAR EN AMBOS TANTO PADRE COMO EN EL HIJO
DECLARE
X NUMBER:=10;
BEGIN
DBMS_OUTPUT.PUT_LINE(X);

BEGIN
DBMS_OUTPUT.PUT_LINE(X);
END;
DBMS_OUTPUT.PUT_LINE(X);
END;