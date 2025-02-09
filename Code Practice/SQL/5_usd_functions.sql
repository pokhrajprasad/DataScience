-- use SPACE

-- select * from employee

-- create function Muliply3 
-- ( 
--     @a int, 
--     @b int, 
--     @c int 
-- ) 
-- returns int as begin 
-- return @a * @b * @c 
-- end

-- select id, age,salary, name, dbo.Muliply3(id,age,salary) as result from employee

-- create function addition(
--     @a INT,
--     @b INT
-- )
-- returns int as BEGIN
-- return @a+@b
-- end

-- select id, age, salary, name, dbo.addition(age, salary) as result from employee

-- create function simple_interest(
--     @p int,
--     @r int,
--     @t FLOAT
-- )
-- RETURNS float as BEGIN
-- return (@p*@r*@t)/100
-- end

-- select dbo.simple_interest(29,2,3.5)

-- select name,salary as  Principel, age as rate_of_interest, id as Time,
-- dbo.simple_interest(salary,age,id) as interest, (dbo.simple_interest(salary,age,id)+salary) as amount from employee

-- create function area_of_cylinder(
--     @r FLOAT,
--     @h FLOAT
-- )
-- returns float as BEGIN
-- return 3.14*square(@r)*@h
-- end

-- select id as radius, name, age as height, salary, dbo.area_of_cylinder(id,age) as area from employee

-- sp_helptext 'dbo.area_of_cylinder'

-- drop function area_of_cylinder

-- create function area_of_cylinder(
--     @r FLOAT,
--     @h FLOAT
-- )
-- returns float as BEGIN
-- return 3.148*square(@r)*@h
-- end