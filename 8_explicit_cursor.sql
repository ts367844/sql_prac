declare 
    cursor c_stud is select name,student_id from student;
    s_data c_stud%rowtype;
begin
    open c_stud;
    loop
        fetch c_stud into s_data;
        exit when c_stud%notfound;
        dbms_output.put_line(s_data.student_id||' '||s_data.name);
    end loop;
    close c_stud;
end;
/