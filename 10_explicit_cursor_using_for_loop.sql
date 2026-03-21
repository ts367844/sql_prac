declare 
    cursor c_stud is select name,student_id from student;
begin
    for s_data in c_stud
    loop
        dbms_output.put_line(s_data.student_id||' '||s_data.name);
    end loop;
end;
/