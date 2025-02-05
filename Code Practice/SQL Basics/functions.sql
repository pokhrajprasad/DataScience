-- use space

-- select * from employee

-- select sum(salary) from employee
-- select max(salary) from employee
-- select min(salary) from employee
-- select avg(salary) from employee

-- select count(*) from employee
-- select count(id) from employee
-- select count(salary) from employee

-- select * from employee

-- select concat(id,' ',name,' ',age,' /',gender,' ',salary,' @ ',department,' from ',city) from employee

-- select concat(name,' id is ',id,' age is ',age,' gender is ',gender,' earning Rs. ',salary,' working in ',department,' department belongs to ',city,'.')
-- as information from employee

-- select * from employee

-- select *, replace(city, 'Delhi', 'New Delhi') as updated_city from employee

-- select substring('This is sql class',9,3)
-- select substring('Yesterday was 1st of feb',1,9)
-- select substring('Yesterday was 1st of feb',15,3)

-- select id,name, upper(substring(name,1,3)) as initials from employee
-- select id,name, upper(substring(name,1,3)), city, lower(substring(city,1,2)) as initials from employee

-- select * from employee

-- select id,name,concat(upper(substring(name,1,3)),lower(substring(department,1,1)),upper(substring(city,1,3))) as Username,
-- concat(lower(substring(name,1,2)),age,upper(substring(gender,1,3)),lower(substring(country,1,3))) as Password
-- into info
-- from employee

-- select * from info

-- select name, upper(reverse(substring(reverse(name),1,3))) from employee

-- select id,name,concat(upper(substring(name,1,3)),lower(substring(department,1,1)),upper(substring(city,1,3))) as Username,
-- concat(lower(substring(name,1,2)),age,upper(substring(gender,1,3)),lower(substring(country,1,3))) as Password,
-- len(
--    concat(lower(substring(name,1,2)),age,upper(substring(gender,1,3)),lower(substring(country,1,3))) 
-- )
-- from employee