SET SERVEROUTPUT ON 

DECLARE
usuario varchar2(40):=user;
BEGIN

CASE usuario
when 'SYS' then dbms_output.put_line('Eres Super admin');
when 'SYSTEM' then dbms_output.put_line('Eres un admin normal');
when 'HR' then dbms_output.put_line('Eres de recursos humanos');
ELSE dbms_output.put_line('Usuario no autorizado');
END CASE;

END;