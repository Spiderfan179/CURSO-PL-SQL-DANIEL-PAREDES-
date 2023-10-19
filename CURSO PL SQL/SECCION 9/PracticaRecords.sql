set serveroutput on
declare
 type empl_record is record
 (
 name varchar2(100),
 sal employees.salary%type,
 cod_dept employees.department_id%type);

 type empl_table is table of
 empl_record
 index by pls_integer;

 empl empl_table;
begin
 for i in 100..206 loop
 select first_name||' '||last_name, salary, department_id into empl(i) from employees where employee_id=i;
 end loop;
 for i in empl.first..empl.last loop
 dbms_output.put_line(empl(i).name||' '||empl(i).sal||' '||empl(i).cod_dept);
 end loop;
 dbms_output.put_line('EL PRIMERO');
 dbms_output.put_line(empl(empl.first).name);
 dbms_output.put_line('EL ÚLTIMO');
 dbms_output.put_line(empl(empl.last).name);
 dbms_output.put_line('BORRAMOS LOS EMPLEADOS QUE GANEN MENOS DE 7000');
 dbms_output.put_line('ANTES');
 dbms_output.put_line(empl.count);
 for i in empl.first..empl.last loop
 if empl(i).sal < 7000 then
 empl.delete(i) ;
 end if;
 end loop;
 dbms_output.put_line('DESPUES');
 dbms_output.put_line(empl.count);

end;