declare
    no number(3):=&no;
begin
    if no<0 then 
        dbms_output.put_line('number is negative');
    elsif no=0 then
        dbms_output.put_line('number is zero');
    else
        dbms_output.put_line('number is positive');
    end if;
end;
/