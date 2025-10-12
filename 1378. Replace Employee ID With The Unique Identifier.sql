/* Write your T-SQL query statement below */

--concept related to left join
select
    eu.unique_id,
    e.name
from
    Employees as e
left join
    EmployeeUNi as eu
on
    e.id=eu.id

