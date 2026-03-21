declare
    no number(3):=&no;
begin
    if no<0 then 
        dbms_output.put_line('number is negative');
    else
        dbms_output.put_line('number is positive');
    end if;
end;
/