declare
-- input 
    no1 number(5):=&no1;
    no2 number(5):=&no2;
    no3 number(10);
begin
    no3:=no2/no1;
    dbms_output.put_line('Div is : '||no3);
exception
    when zero_divide then
        dbms_output.put_line('Zero division is not allowed');
end;
/