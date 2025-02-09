use space

select * from employee

select *, iif(age>32, 'Senior Engineer', 'Junior Engineer') as designation from employee order by age


select *, iif(age<25,'intern', iif(age<28,'Software Engineer', iif(age<31,'senior Engineer',iif(age<37,'Tech Lead', iif(age<45,'Manager', iif(age<49,'Sr Maanager', 'Vice President')))))) as Designation from employee

select floor(25.25)
select floor(-25.25)

select CEILING(25.25)
select CEILING(-25.25)

select name, lead(name) over (order by name) as LeadName, 
lag(name) over (order by name) as lagName from employee