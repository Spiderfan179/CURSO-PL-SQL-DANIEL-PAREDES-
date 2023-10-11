SET SERVEROUTPUT ON
DECLARE
X NUMBER:=10;
BEGIN

--Se visualiza el x de el declare padre
DBMS_OUTPUT.PUT_LINE(X);
DECLARE
X NUMBER:=20;
BEGIN
--Se visualiza el declare del begin hijo
DBMS_OUTPUT.PUT_LINE(X);
END;

--Se visualiza denuevo el del padre ya que el begin hijo es local y aislado del padre
DBMS_OUTPUT.PUT_LINE(X);
END;
