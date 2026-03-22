create or replace function feestot
return number is
    tot number;
begin
    select sum(fees) into tot from stud;
    return tot;
end;
/

--call
select feestot from dual;



------------------------------------------
create or replace function feestot(rn in number)
return number is
    tot number;
begin
    select fees into tot from stud where sid=rn;
    return tot;
end;
/

--call
select feestot(1) from dual;