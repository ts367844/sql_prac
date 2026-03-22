declare 
    n number:=&n;
    cnt number:=1;
begin
    <<first>>
        dbms_output.put_line(cnt);
    if cnt<n then
        cnt:=cnt+1;
        goto first;
    end if;
end;
/