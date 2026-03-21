declare 
    n number(3):=&n;
    cnt number(3):=1;
begin
   for cnt in 1..n
    loop
        dbms_output.put_line(cnt);
    end loop;
end;
/