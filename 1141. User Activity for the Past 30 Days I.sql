/* Write your T-SQL query statement below */
select
    activity_date  as day,
    count(distinct user_id) as active_users
from
    Activity
where activity_date BETWEEN DATEADD(DAY, -29, '2019-07-27') AND '2019-07-27'
group by activity_date