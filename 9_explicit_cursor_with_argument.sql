declare 
    cursor c_stud(id number) is select name,student_id from student where student_id=id;
    s_data c_stud%rowtype;
    id number(3):=&id;
begin
    open c_stud(id);
    loop
        fetch c_stud into s_data;
        exit when c_stud%notfound;
        dbms_output.put_line(s_data.student_id||' '||s_data.name);
    end loop;
    close c_stud;
end;
/