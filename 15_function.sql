create or replace function c_sum(a in number,b in number)
return number is 
    c number(7):=a+b;
begin
    return c;
end;
/

-----------
declare 
    a number(3):=&a;
    b number(3):=&b;
begin
    dbms_output.put_line(c_sum(a,b));
end;
/