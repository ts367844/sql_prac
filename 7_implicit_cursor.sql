declare 
    id number(3);
    s_name student.name%type;
    s_id student.student_id%type;
begin
    select name,student_id into s_name,s_id from student where student_id=&id;
    dbms_output.put_line('Name :'||s_name||'  Id :'||s_id);
end;
/