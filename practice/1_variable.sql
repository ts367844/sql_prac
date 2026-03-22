declare
-- input 
    no1 number(5):=&no1;
    no2 number(5):=&no2;
begin
    dbms_output.put_line('Sumi is : '||(no1+no2));
end;
/