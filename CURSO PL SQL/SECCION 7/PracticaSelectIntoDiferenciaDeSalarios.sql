set serveroutput on

declare

max_nombre     employees.first_name%type;
min_nombre     employees.first_name%type;
max_salary employees.salary%type;
min_salary  employees.salary%type;

diferencia  employees.salary%type;

begin

select max(first_name),min(first_name),max(salary),min(salary)into max_nombre,min_nombre,max_salary,min_salary from employees;

select max_salary - min_salary into diferencia from dual;

dbms_output.put_line('El mayor salario es de  ' || max_nombre ||' Y es de '||max_salary);
dbms_output.put_line('El menor salario es de  ' || min_nombre ||' Y es de '||min_salary);
dbms_output.put_line('La diferencia entre sus salarios es de '|| diferencia);
end;

