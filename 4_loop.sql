declare 
    n number(3):=&n;
    cnt number(3):=1;
begin
    loop
        exit when cnt>n;
        dbms_output.put_line(cnt);
        cnt := cnt + 1;
    end loop;
end;
/