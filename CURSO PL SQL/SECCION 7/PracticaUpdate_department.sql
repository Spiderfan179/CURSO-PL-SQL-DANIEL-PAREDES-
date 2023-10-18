set serverOutput on

declare
Max_id   departments.department_id%type;

begin

select max(department_id) into max_id from departments;

update departments set location_id= 1700 where department_id = max_id;
commit;
end;

select * from departments;