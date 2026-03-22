declare
    n number:=&n;
    cnt number;
begin
    for cnt in  1..n
    loop
        dbms_output.put_line(cnt);
    end loop;
end;
/

--------------------------------
reverse
-------------------------------
declare
    n number:=&n;
    cnt number;
begin
    for cnt in reverse 1..n
    loop
        dbms_output.put_line(cnt);
    end loop;
end;
/