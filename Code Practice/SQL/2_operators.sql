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

--------------------------------------------------------------------------------------------
--DIFFERENCE BETWEEN UNION AND UNION ALL

-- In SQL, the UNION and UNION ALL operators are used to combine the results of two or more SELECT statements into a single result set. However, there are key differences in how they handle duplicates and how they impact performance:

-- UNION
-- Removes Duplicates: UNION performs a set operation that automatically eliminates duplicate rows from the results. The SQL engine essentially does a distinct operation on the result set to ensure that all rows are unique.
-- Performance Impact: Because UNION needs to check for duplicates and remove them, it can be slower, especially when dealing with large data sets. This is because the operation involves sorting and comparing the rows to identify and remove duplicates.
-- Use Case: Use UNION when you need to ensure that the result set contains no duplicate rows.

-- UNION ALL
-- Keeps Duplicates: UNION ALL does not perform any duplicate elimination. It simply concatenates the rows from the second query to those of the first query, including all duplicates. This is a straightforward append operation.
-- Performance Impact: UNION ALL is faster than UNION because it does not incur the overhead of checking for and removing duplicates. It simply combines all rows from the involved SELECT statements.
-- Use Case: Use UNION ALL when you do not care about duplicates in the result set, or when you know there are no overlaps in the data from the combined queries. It's also useful when performance is a concern and removing duplicates is not necessary.
----------------------------------------------------------------------------------------------

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

