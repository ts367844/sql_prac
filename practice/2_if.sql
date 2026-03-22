declare
-- input 
    no1 number(5):=&no1;
    no2 number(5):=&no2;
begin
-- if condition
    if(no1>no2) then 
        dbms_output.put_line('No1 is bigger');
    elsif(no1=no2) then
        dbms_output.put_line('Equal');
    else 
        dbms_output.put_line('No2 is bigger');
    end if;
end;
/