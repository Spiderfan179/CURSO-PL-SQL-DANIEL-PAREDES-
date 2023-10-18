SET SERVEROUTPUT ON


declare
tipoTrabajo employees.job_id%type;

begin
select job_id into tipotrabajo FROM EMPLOYEES where employee_id =100;

dbms_output.put_line('El tipo de trabajo del empleado 100 es ' || tipotrabajo);

end;


