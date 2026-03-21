create or replace procedure p_stud(id in number)
is 
    s_name student.name%type;
begin
    select name into s_name from student where student_id=id;
    dbms_output.put_line('Name is :'||s_name);
end;
/





----------------------------------------
declare 
    id number(3):=&id;
begin
    p_stud(id);
exception
    when no_data_found then
        dbms_output.put_line('No record found in table student');
end;
/