declare
-- input 
    no1 number(5):=&no1;
    no2 number(5):=&no2;
begin
    dbms_output.put_line('Sumi is : '||(no1+no2));
end;
/

--------------------
create table product_master(
    product_id number(4) primary key,
    product_name varchar2(20) not null,
    product_price number(3)
);

create table product_order(
    product_id number(4) references product_master(product_id),
    quantity number(3)
);


insert into product_master values(101,'Light',450);
insert into product_master values(102,'TV',220);
insert into product_master values(103,'Laptop',780);
insert into product_master values(104,'Phone',350);
insert into product_master values(105,'AC',125);

insert into product_order values(101,60);
insert into product_order values(102,20);
insert into product_order values(103,10);
insert into product_order values(104,500);
insert into product_order values(105,40);

create or replace procedure disp
is
    cursor c1 is select * from product_master;
    cursor c2 is select * from product_order;
    data_p product_master%rowtype;
    data_o product_order%rowtype;
begin
    for data_p in c1 loop
        dbms_output.put_line(data_p.product_id||' '||data_p.product_name||' '||data_p.product_price);
    end loop;
    for data_o in c2 loop
        dbms_output.put_line(data_o.product_id||' '||data_o.quantity);
    end loop;
end;
/


CREATE TABLE history_product_order_tr (
    product_id NUMBER(4),
    quantity NUMBER(3),
    action_date DATE
);

CREATE OR REPLACE TRIGGER history_product_order_trg
BEFORE DELETE OR UPDATE OF quantity ON product_order
FOR EACH ROW
BEGIN
    INSERT INTO history_product_order
    (product_id, quantity, action_type, action_date)
    VALUES (
        :OLD.product_id,
        :OLD.quantity,
        SYSDATE
    );
END;
/

------------------------------