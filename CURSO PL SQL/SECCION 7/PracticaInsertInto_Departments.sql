set serveroutput on

declare

N_department departments.department_id%type;


begin

--Numero +1
select max(department_id)+1 into N_department from departments;

insert into departments(department_id,department_name,manager_id,location_id) values(n_department,'INFORMATICA',100,1000);

commit;
dbms_output.put_line(N_department);

end;


select * from departments;