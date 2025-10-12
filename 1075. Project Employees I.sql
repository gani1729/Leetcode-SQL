/* Write your T-SQL query statement below */

-- here when we are using avg() on experience it will return int because experiance_years is in int so first need to convert thaat to float as below or use avg(cast(e.experience_years as float))
select
    p.project_id as project_id,
    round(avg(e.experience_years*1.0),2) as average_years
from
    Project as p
join
    Employee as e
on
    p.employee_id = e.employee_id
group by
    p.project_id

