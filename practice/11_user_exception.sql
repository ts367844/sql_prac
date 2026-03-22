declare
    mark_70 exception;
    m student.marks%type;
begin
    select marks into m from student where student_id=&id;
    if m<70 then
     raise mark_70;
    else
        dbms_output.put_line('Marks :'||m);
    end if;
exception
    when mark_70 then
        dbms_output.put_line('Mark is less than 70');
        -- owend erro printer   
        raise_application_error(-20069,'Mark < 70');
end;
/
