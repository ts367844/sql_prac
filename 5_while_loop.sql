declare 
    n number(3):=&n;
    cnt number(3):=1;
begin
    while (cnt<=n) 
    loop
        dbms_output.put_line(cnt);
        cnt := cnt + 1;
    end loop;
end;
/