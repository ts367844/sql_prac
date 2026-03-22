declare
    no number := &no;
    cnt number := 1;
begin
    loop
        exit when cnt > no;
        dbms_output.put(cnt || ' ');
        cnt := cnt + 1;
    end loop;

    dbms_output.new_line; -- important
end;
/