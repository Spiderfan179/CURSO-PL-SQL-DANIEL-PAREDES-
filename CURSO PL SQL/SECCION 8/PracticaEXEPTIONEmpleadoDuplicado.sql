
declare
nombre_empleado employees.first_name%type;
begin
 select first_name into nombre_empleado from employees where employee_id>100;
 dbms_output.put_line(nombre_empleado);
exception
 when no_data_found then
 dbms_output.put_line('No existe el empleado.');
 when too_many_rows then
 dbms_output.put_line('Empleado duplicado.');
 end;

