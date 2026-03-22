create or replace trigger t1
before insert or update or delete on stud for each row

begin
    dbms_output.put_line('Operation performed on stud table');
end;
/