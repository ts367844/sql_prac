declare 
    no number:=&id;
    s_id student.student_id%type;
    s_name student.name%type;
begin
    select name,student_id into s_name,s_id from student where student_id=no;
    if sql%found then
        dbms_output.put_line(s_name||s_id||sql%rowcount);
    end if;
end;
/