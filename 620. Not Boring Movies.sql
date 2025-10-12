/* Write your T-SQL query statement below */

--we can also use mod(c,0)
select
*
from
    Cinema as c
where
    c.description <>'boring' and c.id%2 <> 0
order by 
    rating desc
