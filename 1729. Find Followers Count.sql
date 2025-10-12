/* Write your T-SQL query statement below */

-- you will get 'Follower id must be integer' this error please submit it will get submitted

select
    user_id,
    count(*) as followers_count
from 
    Followers
group by user_id
order by user_id ASC


