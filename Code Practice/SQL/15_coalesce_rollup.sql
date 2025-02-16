-- use space

-- select department,gender, sum(salary) as salary from employee group by rollup(department,gender)

-- select coalesce(department,'Total'), coalesce(gender,'Total'), sum(salary) from employee group by rollup(department,gender)
