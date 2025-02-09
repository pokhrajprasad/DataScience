-- use SPACE

-- select * from employee

-- select * from employee where department = 'IT' and city = 'Delhi'
-- select * from employee where gender = 'Female' or department = 'HR'

-- select * from employee where department != 'IT'
-- select * from employee where department <> 'IT'
-- select * from employee where NOT department = 'IT'

-- select * from employee where department != 'IT' and department != 'HR'

-- select * from employee where gender = 'Male' and department = 'Accounts'
-- union
-- select * from employee where gender = 'Female' and department = 'HR'

-- select * from employee where gender = 'Male' or city = 'Mumbai'
-- UNION all
-- select * from employee where department = 'IT'

-- select * from employee where department = 'IT'
-- INTERSECT
-- select * from employee where gender = 'Male'

-- select * from employee where gender = 'Male'
-- EXCEPT
-- select * from employee where department = 'IT'

-- select * from employee where id > 8
-- except
-- select * from employee where department = 'HR'

-- select * from employee where id > 10
-- select * from employee where id >= 10

-- select * from employee where id in (1,2,3,5,8,9)

-- select * from employee where age between 23 and 32

-- select * from employee where name BETWEEN 'Gopal' and 'Rani'

-- select * from employee

-- select * from employee where name like 'a%'
-- select * from employee where name like '%a'
-- select * from employee where name like '_a%'
-- select * from employee where name like 'a_%'
-- select * from employee where name like '__a%'
-- select * from employee where name like '%al'
-- select * from employee where name like '%a%'
-- select * from employee where age like '2%'

-- select * from employee order by name
-- select * from employee order by name desc

-- select * from employee order by gender, age

-- select * from employee order by department, name
-- select * from employee order by department, name desc 

-- select name from employee order by name

-- select * from employee

-- select department, sum(salary) from employee group by department
-- select department, gender, sum(salary) as salary from employee group by gender, department
-- select gender, department, sum(salary) as salary from employee group by gender, department

-- select * from employee

-- select department, sum(salary) as total_salary from employee group by gender, department
-- having department in ('HR', 'IT')

-- select gender, sum(salary) as total_salary from employee group by gender having gender = 'male'

-- select department, gender, sum(salary) as total_salary from employee where gender = 'male'
-- group by gender, department
-- having department in ('HR', 'IT', 'Accounts')
-- order by department desc

