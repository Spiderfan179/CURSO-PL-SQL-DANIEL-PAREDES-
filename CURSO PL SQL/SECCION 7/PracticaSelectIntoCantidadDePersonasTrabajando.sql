Set serveroutput on


declare
DEPARTMENTID number:=50;

departamento  departments.department_name%type;
cantidadEmpleados number;

begin

select department_name into departamento from departments where department_id = departmentid;

select count(*) into cantidadEmpleados from employees where department_id = departmentid;

dbms_output.put_line('en el departamento de '||departamento||' solo hay '|| cantidadempleados || ' trabajando');

end;

--select * from departments where department_id = 100;

--select count(*) from employees where department_id =100;