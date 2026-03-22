----spefication---

create or replace package p1 is
    function sfee(rn in number) return number;
    procedure totfees;
end;
/

---body----
create or replace package body p1 is
        function sfee(rn in number ) return number 
        is
            cnt number;
        begin
            select fees into cnt from stud where sid=rn;
            return cnt;
        end;

        procedure totfees
        is
            tot number;
        begin 
            select sum(fees) into tot from stud;
            dbms_output.put_line('Total fees is '||tot);
        end;
 end p1;
 /


--call function--
 select p1.sfee(1) from dual;

 --call prodecure--
  execute p1.totfees;
