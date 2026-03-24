create or replace trigger t1
before insert or update or delete on stud for each row

begin
    dbms_output.put_line('Operation performed on stud table');
end;
/

--------------------------------
create or replace trigger t2
before insert or update or delete on stud
for each row
begin
    if inserting then
        dbms_output.put_line('Record Inserted');
    elsif updating then
        dbms_output.put_line('Record Updated');
    elsif deleting then
        dbms_output.put_line('Record Deleted');
    end if;
end;
/