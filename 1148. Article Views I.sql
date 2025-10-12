/* Write your T-SQL query statement below */

select
    distinct author_id as id
from
    Views as v
where 
    v.author_id = v.viewer_id
order by id asc


--below approch is using join concept
/*
select
distinct v1.author_id as id
from
    Views as v1
join 
    Views as v2
on v1.author_id= v2.viewer_id and v1.article_id = v2.article_id
order by id ASC
*/


