declare
    no number:=&no;
    no2 number;
begin
    select rollno into no2 from stud where rollno=no;
exception 
    when too_many_rows then
        dbms_output.put_line('2 var avi gayu');
end;
/