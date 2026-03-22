declare
    n number:=&n;
    cnt number:=1;
begin
    while (cnt<=n) loop
        dbms_output.put_line(cnt);
        cnt:=cnt+1;
    end loop;
end;
/