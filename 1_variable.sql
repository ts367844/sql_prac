declare
    a number(3):=&no1;
    b number(3):=&no2;
    c number(3);
begin 
    dbms_output.put_line('Number 1:'||a||'Number 2:'||b);
    c:=a;
    a:=b;
    b:=c;
    dbms_output.put_line('Number 1:'||a||'Number 2:'||b);
end;
/