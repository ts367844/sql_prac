declare 
-- declare cursor
    cursor c_stud is select * from student;
    s_data student%rowtype;
begin
-- open cursor
    open c_stud;
    loop
        exit when c_stud%notfound;
        -- fetch cursor
        fetch c_stud into s_data;
        dbms_output.put_line(s_data.student_id||' '||s_data.name);
    end loop;
    -- close cursor
    close c_stud;
end;
/

------------------------------
with argument
--------------------------------
declare 
-- declare cursor
    id number;
    cursor c_stud(id number) is select * from student where student_id=id;
    s_data student%rowtype;
begin
    id:=&id;
-- open cursor
    open c_stud(id);
    loop
        fetch c_stud into s_data;
        exit when c_stud%notfound;
        -- fetch cursor
        dbms_output.put_line(s_data.student_id||' '||s_data.name);
    end loop;
    -- close cursor
    close c_stud;
end;
/

----------------------------
exlicit cursor with for loop
-- in this no need to open,fetch,close cursor
----------------------------
declare 
-- declare cursor
    cursor c_stud is select * from student;
    s_data student%rowtype;
begin
    for s_data in c_stud loop
        dbms_output.put_line(s_data.student_id||' '||s_data.name);
    end loop;
end;
/