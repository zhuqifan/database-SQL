spool off
set echo off

set echo on
spool Script.log

create or replace view a as
  select DISTINCT firstName,lastName
  From CustomerInfo natural join orderCartInfo;

SELECT * FROM a;

create or replace view b as
  select code,itemNum,categoryId,qtyInstock
  from InventoryItem natural join category natural join ItemType
  where qtyInstock<25;

SELECT * FROM b;

create or replace view c as
  select orderCartId,loginName,firstName,lastName,orderPrice
  from customerInfo natural join orderCartInfo natural join lineItems

select * from c;

create or replace view d as
  select loginName,firstName,lastName,sum(orderPrice)sum
  from customerInfo natural join orderCartInfo natural join lineItems
  group by loginName,firstName,lastName;
select * from d;

create or replace view e as
  select distinct loginName, count(orderCartId)cartnum
  from orderCartInfo natural join customerInfo
  group by loginName;

select loginName,
CASE
    WHEN cartnum > 2 THEN 'BR-1 violated'
    ELSE 'BR-1 satisfied'
END as case1
from e;

select itemNum,itemSize,itemColor,count(itemNum)as count
from inventoryItem natural join itemType
group by itemColor,itemSize,itemNum;

select
CASE
    WHEN count > 1 THEN 'BR-2 violated'
    ELSE 'BR-2 satisfied'
END as case1
from (
  select itemNum,itemSize,itemColor,count(itemNum)as count
  from inventoryItem natural join itemType
  group by itemColor,itemSize,itemNum
);


select itemNum,itemColor,itemSize,
CASE
    WHEN count > 1 THEN 'BR-2 violated'
    ELSE 'BR-2 satisfied'
END as case1
from (
  select itemNum,itemSize,itemColor,count(itemNum)as count
  from inventoryItem natural join itemType
  group by itemColor,itemSize,itemNum
)
where count>1;


        CREATE or replace TRIGGER tr_price before insert or update on itemType for each row
        declare minimum float;
        begin
          select min(price)
          into minimum
          from itemType;
          if :new.price > 4*minimum
            then
            raise_application_error (-20000,'new price can not over 4 times min old price');
          END IF;
        end;
        /

select * from itemType;

insert into itemType values ('D2', 'awefawef', '---', 1000, 'C');
  select * from itemType;
insert into itemType values ('D3', 'awefawef', '---', 1, 'C');
  select * from itemType;

update itemType
set price = 1
where itemNum = 'C2';
select * from itemType;

update itemType
set price = 100
where itemNum = 'C2';
select * from itemType;


spool off
set echo off
