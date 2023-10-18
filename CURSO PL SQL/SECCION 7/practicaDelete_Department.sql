declare

max_id departments.department_id%type;

begin

select max(department_id)into max_id from departments;

delete from departments where department_id = max_id;

end;

select * from departments;