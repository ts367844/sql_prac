declare 
    no1 number(3):=&no1;
    no2 number(3):=&no2;
    no3 number(3);
begin
    no3:=no1/no2;
    dbms_output.put_line(no3);
exception
    when zero_divide then
        dbms_output.put_line('Zero division error');
end;
/