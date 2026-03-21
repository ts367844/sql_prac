declare 
    less_5000 exception;
    no number(5):=&fees;
begin
    if no<5000 then
        raise less_5000;
    end if;
    dbms_output.put_line('Fess is paid : '||no);
exception
    when less_5000 then
        dbms_output.put_line('Fess is less than 5000');
end;
/
