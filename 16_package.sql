---------------------
specification of package
---------------------------
create or replace package p_pack is
    procedure p_stud;
    function f_stud(id number) return varchar2;
end;
/




-------------------------------
package body 
---------------------------------
create or replace package body p_pack is 
    function f_stud(id number) return varchar2 is
        s_name student.name%type;
        s_id student.student_id%type;
    begin
        select name,student_id into s_name,s_id from student where student_id=id;
        return s_name||' '||s_id;
    end;
    procedure p_stud 
    is
        cursor c_stud is select name,student_id from student;
    begin
        for s_data in c_stud
        loop
            dbms_output.put_line(s_data.name||' '||s_data.student_id);
        end loop;
    end;
end p_pack;
/
            


----------------------------
 execute p_pack.p_stud;

 ---------------------
declare 
    n number(3):=&id;
begin
    dbms_output.put_line(p_pack.f_stud(n));
end;
/