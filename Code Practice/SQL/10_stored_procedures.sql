-- use space

-- select * from project
-- select* from employee
-- select * from Company

-- create PROCEDURE Salary_slip
-- as
-- select e.id, e.name, p.project_name, (e.salary*6) as HRA, (e.age*20) as Shift_allowance, (p.pincode*2) as Project_allowance,
-- (c.count*13) as Special_Allowance, (e.salary*7) as Bonus, ((e.salary*6)+(e.age*20)+(p.pincode*2)+(c.count+13)+(e.salary*7)) as CTC from employee e inner join project p ON e.id=p.pid
-- inner join Company c on p.pid=c.cid

-- exec Salary_slip