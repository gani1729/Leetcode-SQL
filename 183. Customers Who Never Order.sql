/* Write your T-SQL query statement below */

/*
select 
    name as Customers
from
    Customers
where
    id not  in(select distinct customerId from Orders)
*/

--if in case the customerid is null in orders this won't work so
--use left join or not exists
select 
    c.name as Customers
from
    Customers as c
where
    not exists(select top 1 * from Orders as o where o.customerId = c.id)