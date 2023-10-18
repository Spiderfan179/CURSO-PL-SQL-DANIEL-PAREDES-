set serveroutput on

declare

Nombre employees.first_name%type;
Salario employees.salary%type;


begin

select max(first_name), max(salary) into nombre ,salario from employees where department_id = 100;

dbms_output.put_line('El salario maximo le pertenece a '|| nombre ||' y es de  ' || salario);

end;

