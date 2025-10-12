/* Write your T-SQL query statement below */

select
    u.name as name,
    sum(t.amount) as balance
from
    Users as u
join 
    Transactions as t
on
    u.account = t.account
group by
    t.account,u.name
having sum(t.amount)>10000

-- here we don't need to use account in group by since in the description its given that each name will be unique
