create or replace procedure p_stud(id in number)
    is 
       s_data student%rowtype;
begin
    select * into s_data from student where student_id=id;
    dbms_output.put_line(s_data.name||' '||s_data.student_id);
end;
/     

-------------------------- 
begin
    p_stud(&id);
end;
/

------------------------------------------
out 
----------------------------------------
create or replace procedure p_stud(tot out number)
is 
begin
    select sum(marks) into tot from student;
end;
/     

-------------------------- 
declare
    tot number;
begin
    p_stud(tot);   -- call procedure
    dbms_output.put_line(tot);  -- print result
end;
/