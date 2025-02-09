use space

select min(salary) from employee where salary IN
(select distinct top(2) salary from employee order by salary desc)

select * from
(
select *, rank() over(order by salary desc) as r, DENSE_RANK() over(order by salary desc) as dr from employee
) as cte  
where r=10
